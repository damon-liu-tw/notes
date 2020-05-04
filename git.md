# SSH Keys
- 測試
    ```
    $ ssh -T git@github.com
    $ ssh -T git@bitbucket.org
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