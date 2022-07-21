<script>
	var post = {
		title: "가장 빨리 만나는 스벨트",
		content: "<span style='color:red'>스벨트</span>는 정말 <b>재미있어요</b>"
	}
</script>

<main>
	<div>
		<h1>{post.title}</h1>
		{@html post.content}
	</div>
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
