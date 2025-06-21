<script lang="ts">
	import { onMount } from 'svelte';
	import { goto } from '$app/navigation';
	import '../../app.css';

	onMount(() => {
		// Check if user is logged in
		const isLoggedIn = localStorage.getItem('isLoggedIn') === 'true';
		if (!isLoggedIn) {
			goto('/');
		}
	});
</script>

<slot /> 