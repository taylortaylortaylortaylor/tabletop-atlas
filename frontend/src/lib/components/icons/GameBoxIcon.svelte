<script lang="ts">
	import { cn } from '$lib/utils.js';
	import type { SVGAttributes } from 'svelte/elements';

	type Props = SVGAttributes<SVGSVGElement> & {
		size?: number | string;
	};

	let { size = 24, class: className, ...restProps }: Props = $props();
</script>

<svg
	xmlns="http://www.w3.org/2000/svg"
	width={size}
	height={size}
	viewBox="0 0 24 24"
	fill="none"
	stroke="currentColor"
	stroke-width="2"
	stroke-linecap="round"
	stroke-linejoin="round"
	class={cn('inline-block', className)}
	aria-hidden="true"
	{...restProps}
>
	<!-- Simple flat box -->
	<rect x="4" y="6" width="16" height="14" rx="1.5" />
	<path d="M4 10h16M12 6v4" />
	<line x1="8" y1="14" x2="10" y2="14" />
	<line x1="14" y1="14" x2="16" y2="14" />
</svg>
