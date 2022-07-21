<script>
	async function promiseFunc() {
		const result = new Promise((resolve, reject) => {
			setTimeout(()=>{
				resolve("Hello Universe~!");
			}, 1000);
		});
		const rtn = await result;
		return rtn;
	}
	let myPromise = promiseFunc();
</script>

<main>
	{#await myPromise}
		<h1> 잠시만 기다리세요.. </h1>
	{:then res}
		<h1> {res} </h1>
	{:catch error}
		<h1> Error: {error.message} </h1>
	{/await}

	<hr>
	<button on:click={()=> myPromise = promiseFunc() }> async 함수 호출하기 </button>
</main>	

<style>
	main {
		text-align: center;
		padding: 1em;
		max-width: 240px;
		margin: 0 auto;
	}

	h1 {
		color: #ff3e00;
		text-transform: uppercase;
		font-size: 4em;
		font-weight: 100;
	}

	@media (min-width: 640px) {
		main {
			max-width: none;
		}
	}
</style>
