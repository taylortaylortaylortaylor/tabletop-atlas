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
	<!-- Three flat aligned cards -->
	<rect x="4" y="4" width="12" height="16" rx="1.5" />
	<path d="M7 4v16M10 4v16" />
	<rect x="8" y="4" width="12" height="16" rx="1.5" />
</svg>
