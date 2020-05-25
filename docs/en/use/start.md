# Get started

To make a book with makebook, follow these steps:

1.  Clone the production branch of this code repository.

    ```cli
    $ git clone -b latest/prod git@github.com:kieranpotts/makebook.git
    ```

    The code repository will be cloned to a directory on your computer called `makebook`. Change to that directory.

    ```cli
    $ cd makebook
    ```

    Alternatively, download and unpack the archive of the latest production-grade distribution of makebook [from here](https://github.com/kieranpotts/makebook/archive/latest/prod.zip).

2.  Copy the `eg` directory.

    The contents of this directory represent a working example of a book built with makebook. It can be used as a starter kit for new book projects.

    Give the cloned directory a name of your choosing. This will be the root directory for your new book project.

    ```cli
    $ cp eg ../my-new-book
    ```

3.  Change to the cloned directory and create a new local Git repository from its contents.

    ```cli
    $ cd ../my-new-bok
    $ git eg
    ```

    Configure the local Git repository as you require.

    ```cli
    $ git remote add origin git@githost.com:user/repo.git
    $ git add .
    $ git commit -m "Initial commit"
    $ git push -u origin master
    ```

4.  Create your book's content.

    Follow these instructions to create the source code and configuration for your book:

    - [Set the title and other metadata for your book](metadata.md)
    - [Write chapters](chapters.md)
    - [Create links between chapters and sections](links.md)
    - [Embed images](images.md)
    - [Encode tables](tables.md)

5.  When you have created a first draft of your book, you can [export](export.md) it to EPUB, PDF and HTML.
