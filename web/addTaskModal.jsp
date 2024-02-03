<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <form class="modal-content" action="/addTask" method="post">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">New task</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="mb-3">
                    <label for="name" class="form-label">Task name</label>
                    <input class="form-control" id="name" name="name" placeholder="Task name...">
                </div>
                <div class="mb-3">
                    <label for="desc" class="form-label">Description</label>
                    <textarea class="form-control" id="desc" name="desc" rows="3" placeholder="Task description..."></textarea>
                </div>
                <div class="mb-3">
                    <label for="deadlineDate" class="form-label">Deadline</label>
                    <input type="date" name="deadlineDate" class="form-control" id="deadlineDate">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Add</button>
            </div>
        </form>
    </div>
</div>