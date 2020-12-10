# SSH Keys
- 測試
    ```
    $ ssh -T git@github.com
    $ ssh -T git@bitbucket.org
    ```
# [刪除Git中已經被commit的檔案](https://magiclen.org/git-remove-commited-files/)
- 佔用空間
  - 全 Repo
	```
	git count-objects -vH
	```
  - 依各別檔案大小
	```
	git rev-list --objects --all | git cat-file --batch-check='%(objecttype) %(objectname) %(objectsize) %(rest)' | sed -n 's/^blob //p' | sort --numeric-sort --key=2 | cut -c 1-12,41- | $(command -v gnumfmt || echo numfmt) --field=2 --to=iec-i --suffix=B --padding=7 --round=nearest
	```

# print markdown
```
// Refrence from: https://gist.github.com/beevelop/a0f2c76e79610dca01550c9a93f83876
// Copy following scripts in the developer console of page included markdown content you want to print:

(function () {
	var $ = document.querySelector.bind(document);
	$('#readme').setAttribute('style', 'position:absolute;top:0;left:0;right:0;bottom:0;z-index:100;background-color:white');
	$('#readme>article').setAttribute('style', 'border: none');
	$('body').innerHTML = $('#readme').outerHTML;
	window.print();
})();
```