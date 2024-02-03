package kz.bitlab.academy.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.bitlab.academy.db.DBManager;
import kz.bitlab.academy.entity.Task;

import java.io.IOException;
import java.time.LocalDate;


@WebServlet("/addTask")
public class AddTaskServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/createTask.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String name = req.getParameter("name");
        String description = req.getParameter("desc");
        String deadlineDateString = req.getParameter("deadlineDate");

        if (!name.isBlank() && !description.isBlank() && !deadlineDateString.isBlank()) {
            LocalDate deadlineDate = LocalDate.parse(req.getParameter("deadlineDate"));
            Task task = new Task(name, description, deadlineDate);
            DBManager.addTask(task);
        }

        resp.sendRedirect(req.getContextPath() + "/");
    }
}
