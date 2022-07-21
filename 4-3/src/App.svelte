<script>
	export let name = 'universe';
	let a = 1;
	let b = 1;

	let colors = ["빨강", "노랑", "파랑", "보라"];	
</script>

<main>
	{#if a > 0}
		<h1>Hello {name}!</h1>
	{/if}
	<p>Visit the <a href="https://svelte.dev/tutorial">Svelte tutorial</a> to learn how to build Svelte apps.</p>

	<hr>
	<input type="number" bind:value={b}>

	{#if b == 0}
		<p>{b} 입니다.</p>
	{:else if b > 0}
		<p>{b}는 양수입니다.</p>
	{:else}
		<p>{b}는 음수입니다.</p>
	{/if}

	<hr>
	<ul>
		{#each colors as color}
			<li>{color}</li>
		{/each}
	</ul>

	<hr>
	<ul>
		{#each colors as color, idx}
			<li>{idx}: {color}</li>
		{/each}
	</ul>

	<hr>
	<select>
		<option> 선택하세요 </option>
		{#each colors as color, idx}
			<option> {idx+1}: {color} </option>
		{/each}
	</select>
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
