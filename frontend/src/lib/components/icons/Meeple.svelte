<script lang="ts">
	import { cn } from '$lib/utils.js';
	import type { SVGAttributes } from 'svelte/elements';

	type Props = SVGAttributes<SVGSVGElement> & {
		size?: number | string;
		color?: 'red' | 'blue' | 'green' | 'gold' | 'purple' | 'pink' | 'current';
	};

	let { size = 24, color = 'current', class: className, ...restProps }: Props = $props();

	const colorMap = {
		red: 'var(--brick-red)',
		blue: 'var(--player-blue)',
		green: 'var(--young-emerald)',
		gold: 'var(--energetic-gold)',
		purple: 'var(--wild-purple)',
		pink: 'var(--social-pink)',
		current: 'currentColor'
	};
</script>

<svg
	xmlns="http://www.w3.org/2000/svg"
	width={size}
	height={size}
	viewBox="0 0 24 24"
	fill="none"
	stroke={colorMap[color]}
	stroke-width="2"
	stroke-linecap="round"
	stroke-linejoin="round"
	class={cn('inline-block', className)}
	aria-hidden="true"
	{...restProps}
>
	<!-- Simplified meeple outline -->
	<circle cx="12" cy="5" r="2.5" />
	<path d="M8 11h8M8 11v10M16 11v10M9.5 21h5" />
	<path d="M12 7.5v3.5M8 11L7 9.5M16 11L17 9.5" />
</svg>
