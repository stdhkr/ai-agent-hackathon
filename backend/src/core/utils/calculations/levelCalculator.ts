const requiredXp = (level: number) => {
	return (10 * (level - 1) * level) / 2;
};

export const calculateLevel = (xp: number) => {
	const n = (1 + Math.sqrt(1 + (4 * xp) / 5)) / 2;
	let tentativeLevel = Math.floor(n);

	while (requiredXp(tentativeLevel) > xp && tentativeLevel > 1) {
		tentativeLevel--;
	}
	while (requiredXp(tentativeLevel + 1) <= xp) {
		tentativeLevel++;
	}

	return Math.max(tentativeLevel, 1);
};
