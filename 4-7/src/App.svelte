<script>
	async function getPosts() {
		const res = await fetch("https://jsonplaceholder.typicode.com/posts");
		const json = await res.json();
		return json;
	}

	let promisePosts = getPosts();
</script>

<main>
	<button on:click={()=> promisePosts = getPosts()}> 포스트 리스트 가져오기 </button>
	<table border="1">
		<thead>
			<th>id</th>
			<th>사용자</th>
			<th>타이틀</th>
			<th>내용</th>
		</thead>
		<tbody>
		{#await promisePosts}
			<tr>
				<td colspan=4>
				가져오는 중 잠시만 기다리세요
				</td>
			</tr>
		{:then posts}
			{#each posts as post}
				<tr>
					<td>{post.id}</td>
					<td>{post.userId}</td>
					<td>{post.title}</td>
					<td>{post.body}</td>
				</tr>
			{/each}
		{/await}
		</tbody>
	</table>
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
