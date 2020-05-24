# Get started

Follow these instructions to start a new book project.

1.  Copy the `init` directory. 

    Give the cloned directory a name of your choosing — this will be the root directory for your new book project.

    ```sh
    $ cp init ../my-new-book
    ```

2.  Change to the cloned directory and create a new local Git repository from its contents.

    ```sh
    $ cd ../my-new-bok
    $ git init
    ```

    Configure the local Git repository as you require.

    ```sh
    $ git remote add origin git@githost.com:user/repo.git
    $ git add .
    $ git commit -m "Initial commit"
    $ git push -u origin master
    ```

3.  Create your book's content:

    - [Set the title and other metadata for your book](metadata.md)
    - [Write chapters](chapters.md)
    - [Create links between chapters and sections](links.md)
    - [Embed images](images.md)
    - [Encode tables](tables.md)

4.  Finally, [export your book](export.md) to PDF, HTML and/or EPUB.
