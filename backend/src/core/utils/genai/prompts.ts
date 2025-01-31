export const answerDivisionPrompt = `# 以下の指示に従って、入力された音声文字起こしを行い、そこからクイズ形式の「問題（Question）」と「答え（Answer）」を生成してください。

## 注意事項
- 問題に答えの全文を含めないようにしてください。
`;

export const meaningPrompt = `問題は「{QUESTION}」、答えは「{ANSWER}」です。
答えをより詳しく、わかりやすい意味で100文字以内で日本語、英語で解説してください。`;

export const interestsPrompt = `# あなたは暗記アプリのアシスタントです。ユーザーが覚えたい【問題】と【答え】を、ユーザーの【興味】と関連づけて理解しやすい短いうんちくやエピソードを作成してください。

【問題】: 「{QUESTION}」
【答え】: 「{ANSWER}」
【興味】: 「{INTERESTS}」

## 注意事項
1. 出力は「短文」の1つのエピソードとする。
3. 読んでいて楽しく、かつ覚えやすい内容にする。
4. 解説や前置きは不要で、直接エピソードを提示する。`;

export const catLevelPromptTexts = [
	"シンプルで真面目な語呂合わせやフレーズを作成してください。",
	"ユーモアを含んだ語呂合わせやフレーズを作成してください",
	"猫語を使ったハイテンションなフレーズを作成してください。語呂合わせでなくても構いません。とにかくテンション高く、自由にふざけて表現してください（「にゃんにゃん」などの猫要素を盛り込むこと）",
];

export const goroPrompt = `# 指定された内容に関して記憶しやすい短い語呂合わせ、面白いフレーズ、言葉遊びを1から3つ作成してください。

## 出力形式

- 各語呂合わせや言葉遊びを含む1から3つの箇条書きを提示してください。
- 各語呂合わせや言葉遊びは指定された内容に直接関連し、簡潔かつ記憶に残りやすいものにしてください。

## 注意事項

- 語呂合わせや言葉遊びは、音や意味の関連性を意識して作成してください。
- 説明やコメントは避け、フレーズ自体に集中してください。
- {CAT_LEVEL_TEXT}

## 語呂合わせを作成する内容:
- 問題: {QUESTION}
- 答え: {ANSWER}`;

export const generateImagePrompt = `An anthropomorphic cat avatar (or multiple anthropomorphic cats if appropriate) in a slightly loose and deformed anime style, 
with thick line art, minimal use of color (mostly monotone), and designed to be memorable or attention-catching. 
They should be integrated into a scene that visually represents the theme or context described by the following text:

"{MEANING}"`;
