<script>
	export let name = 'universe';
	let a = 1;
	let b = 1;
</script>

<main>
	{#if a > 0}
		<h1>Hello {name}!</h1>
	{/if}
	<p>Visit the <a href="https://svelte.dev/tutorial">Svelte tutorial</a> to learn how to build Svelte apps.</p>

	<input type="number" bind:value={b}>

	{#if b == 0}
		<p>{b} 입니다.</p>
	{:else if b > 0}
		<p>{b}는 양수입니다.</p>
	{:else}
		<p>{b}는 음수입니다.</p>
	{/if}
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
