<script>
	import {afterUpdate, beforeUpdate, onDestroy, onMount} from "svelte"
	onMount(()=>console.log("Component 생성됨"));
	onDestroy(()=>console.log("Component 파괴됨"));

	export let name;
</script>

<p>
	hello {name}
</p>
