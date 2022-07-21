<script>
	let name = 'world';
</script>

<main>
	<input type=text bind:value={name}>

	<p>{Date()}</p>

	{#key name}
		<p>{Date()}</p>
		<h1>Hello {name}!</h1>
	{/key}
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
