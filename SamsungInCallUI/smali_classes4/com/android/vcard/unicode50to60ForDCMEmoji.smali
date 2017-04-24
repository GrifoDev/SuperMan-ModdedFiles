.class public Lcom/android/vcard/unicode50to60ForDCMEmoji;
.super Ljava/lang/Object;
.source "unicode50to60ForDCMEmoji.java"


# static fields
.field static convertMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static emojiStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "\ue729\ue72a\ue752\ue753\ue6f0\ue72c\ue726\ue721\ue725\ue722\ue723\ue6f2\ue720\ue6f3\ue6f4\ue72b\ue757\ue72d\ue72e\ue6f1\ue724\ue728\ue6b1\ue6ec\ue6ed\ue6ee\ue6ef\ue6fa\ue6f6\ue6ff\ue6fb\ue706\ue707\ue708\ue701\ue6fc\ue705\ue6fe\ue737\ue693\ue694\ue695\ue6fd\ue727\ue691\ue692\ue6f9\ue698\ue702\ue704\ue703\ue6a1\ue6a2\ue754\ue755\ue74f\ue750\ue751\ue74e\ue749\ue74d\ue673\ue74c\ue686\ue74a\ue66f\ue670\ue671\ue672\ue71e\ue74b\ue756\ue742\ue744\ue745\ue63e\ue63f\ue640\ue641\ue642\ue643\ue644\ue6b3\ue69c\ue69d\ue69e\ue69f\ue6a0\ue73f\ue741\ue743\ue746\ue748\ue747\ue6a4\ue70e\ue652\ue711\ue699\ue674\ue682\ue6ad\ue645\ue67c\ue71a\ue69a\ue71b\ue684\ue710\ue653\ue656\ue658\ue654\ue655\ue733\ue712\ue657\ue659\ue6f7\ue679\ue67d\ue6ac\ue68b\ue71d\ue65e\ue65f\ue660\ue65b\ue65c\ue65d\ue6b2\ue662\ue6a3\ue661\ue663\ue664\ue73e\ue665\ue666\ue667\ue668\ue66b\ue66a\ue669\ue66c\ue66d\ue6de\ue66e\ue740\ue687\ue688\ue716\ue6d0\ue65a\ue68a\ue681\ue676\ue67a\ue677\ue67b\ue67e\ue68c\ue71f\ue6ba\ue71c\ue70f\ue715\ue719\ue6ae\ue730\ue675\ue683\ue689\ue718\ue714\ue713\ue6dc\ue685\ue6d9\ue6ce\ue6d3\ue6cf\ue717\ue70b\ue72f\ue6dd\ue6d7\ue6d8\ue6db\ue738\ue739\ue73a\ue73b\ue734\ue680\ue67f\ue69b\ue735\ue731\ue736\ue732\ue6d6\ue6df\ue6f8\ue709\ue70a\ue6f5\ue700\ue73d\ue73c\ue678\ue696\ue697\ue6a5\ue6da\ue6b8\ue6b9\ue6b7\ue646\ue647\ue648\ue649\ue64a\ue64b\ue64c\ue64d\ue64e\ue64f\ue650\ue651\ue68d\ue68e\ue68f\ue690\ue6e0\ue6e2\ue6e3\ue6e4\ue6e5\ue6e6\ue6e7\ue6e8\ue6e9\ue6ea\ue6eb\ue6d1\ue6d2\ue6d4\ue6d5\ue6e1\ue70c\ue70d"

    sput-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->emojiStr:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue729"

    const-string v2, "\ud83d\ude09"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue72a"

    const-string v2, "\ud83d\ude06"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue752"

    const-string v2, "\ud83d\ude0b"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue753"

    const-string v2, "\ud83d\ude01"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6f0"

    const-string v2, "\ud83d\ude03"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue72c"

    const-string v2, "\ud83d\ude0f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue726"

    const-string v2, "\ud83d\ude0d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue721"

    const-string v2, "\ud83d\ude0c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue725"

    const-string v2, "\ud83d\ude12"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue722"

    const-string v2, "\ud83d\ude05"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue723"

    const-string v2, "\ud83d\ude13"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6f2"

    const-string v2, "\ud83d\ude1e"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue720"

    const-string v2, "\ud83d\ude14"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6f3"

    const-string v2, "\ud83d\ude16"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6f4"

    const-string v2, "\ud83d\ude35"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue72b"

    const-string v2, "\ud83d\ude23"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue757"

    const-string v2, "\ud83d\ude31"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue72d"

    const-string v2, "\ud83d\ude2d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue72e"

    const-string v2, "\ud83d\ude22"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6f1"

    const-string v2, "\ud83d\ude20"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue724"

    const-string v2, "\ud83d\ude21"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue728"

    const-string v2, "\ud83d\ude1c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6b1"

    const-string v2, "\ud83d\udc64"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6ec"

    const-string v2, "\u2764"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6ed"

    const-string v2, "\ud83d\udc93"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6ee"

    const-string v2, "\ud83d\udc94"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6ef"

    const-string v2, "\ud83d\udc95"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6fa"

    const-string v2, "\u2728"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6f6"

    const-string v2, "\ud83c\udfb5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6ff"

    const-string v2, "\ud83c\udfb6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6fb"

    const-string v2, "\ud83d\udca1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue706"

    const-string v2, "\ud83d\udca6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue707"

    const-string v2, "\ud83d\udca7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue708"

    const-string v2, "\ud83d\udca8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue701"

    const-string v2, "\ud83d\udca4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6fc"

    const-string v2, "\ud83d\udca2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue705"

    const-string v2, "\ud83d\udca5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6fe"

    const-string v2, "\ud83d\udca3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue737"

    const-string v2, "\u26a0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue693"

    const-string v2, "\u270a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue694"

    const-string v2, "\u270c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue695"

    const-string v2, "\u270b"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6fd"

    const-string v2, "\ud83d\udc4a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue727"

    const-string v2, "\ud83d\udc4d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue691"

    const-string v2, "\ud83d\udc40"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue692"

    const-string v2, "\ud83d\udc42"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6f9"

    const-string v2, "\ud83d\udc8b"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue698"

    const-string v2, "\ud83d\udc63"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue702"

    const-string v2, "\u2757"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue704"

    const-string v2, "\u203c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue703"

    const-string v2, "\u2049"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6a1"

    const-string v2, "\ud83d\udc36"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6a2"

    const-string v2, "\ud83d\udc31"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue754"

    const-string v2, "\ud83d\udc34"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue755"

    const-string v2, "\ud83d\udc37"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue74f"

    const-string v2, "\ud83d\udc24"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue750"

    const-string v2, "\ud83d\udc27"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue751"

    const-string v2, "\ud83d\udc1f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue74e"

    const-string v2, "\ud83d\udc0c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue749"

    const-string v2, "\ud83c\udf59"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue74d"

    const-string v2, "\ud83c\udf5e"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue673"

    const-string v2, "\ud83c\udf54"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue74c"

    const-string v2, "\ud83c\udf5c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue686"

    const-string v2, "\ud83c\udf82"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue74a"

    const-string v2, "\ud83c\udf70"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue66f"

    const-string v2, "\ud83c\udf74"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue670"

    const-string v2, "\u2615"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue671"

    const-string v2, "\ud83c\udf78"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue672"

    const-string v2, "\ud83c\udf7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue71e"

    const-string v2, "\ud83c\udf75"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue74b"

    const-string v2, "\ud83c\udf76"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue756"

    const-string v2, "\ud83c\udf77"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue742"

    const-string v2, "\ud83c\udf52"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue744"

    const-string v2, "\ud83c\udf4c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue745"

    const-string v2, "\ud83c\udf4e"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue63e"

    const-string v2, "\u2600"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue63f"

    const-string v2, "\u2601"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue640"

    const-string v2, "\u2614"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue641"

    const-string v2, "\u26c4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue642"

    const-string v2, "\u26a1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue643"

    const-string v2, "\ud83c\udf00"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue644"

    const-string v2, "\ud83c\udf01"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6b3"

    const-string v2, "\ud83c\udf03"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue69c"

    const-string v2, "\ud83c\udf11"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue69d"

    const-string v2, "\ud83c\udf14"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue69e"

    const-string v2, "\ud83c\udf13"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue69f"

    const-string v2, "\ud83c\udf19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6a0"

    const-string v2, "\ud83c\udf15"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue73f"

    const-string v2, "\ud83c\udf0a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue741"

    const-string v2, "\ud83c\udf40"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue743"

    const-string v2, "\ud83c\udf37"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue746"

    const-string v2, "\ud83c\udf31"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue748"

    const-string v2, "\ud83c\udf38"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue747"

    const-string v2, "\ud83c\udf41"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6a4"

    const-string v2, "\ud83c\udf84"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue70e"

    const-string v2, "\ud83d\udc55"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue652"

    const-string v2, "\ud83c\udfbd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue711"

    const-string v2, "\ud83d\udc56"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue699"

    const-string v2, "\ud83d\udc5f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue674"

    const-string v2, "\ud83d\udc60"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue682"

    const-string v2, "\ud83d\udc5c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6ad"

    const-string v2, "\ud83d\udc5d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue645"

    const-string v2, "\ud83c\udf02"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue67c"

    const-string v2, "\ud83c\udfa9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue71a"

    const-string v2, "\ud83d\udc51"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue69a"

    const-string v2, "\ud83d\udc53"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue71b"

    const-string v2, "\ud83d\udc8d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue684"

    const-string v2, "\ud83c\udf80"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue710"

    const-string v2, "\ud83d\udc84"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue653"

    const-string v2, "\u26be"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue656"

    const-string v2, "\u26bd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue658"

    const-string v2, "\ud83c\udfc0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue654"

    const-string v2, "\u26f3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue655"

    const-string v2, "\ud83c\udfbe"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue733"

    const-string v2, "\ud83c\udfc3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue712"

    const-string v2, "\ud83c\udfc2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue657"

    const-string v2, "\ud83c\udfbf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue659"

    const-string v2, "\ud83c\udfc1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6f7"

    const-string v2, "\u2668"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue679"

    const-string v2, "\ud83c\udfa0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue67d"

    const-string v2, "\ud83c\udfaa"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6ac"

    const-string v2, "\ud83c\udfac"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue68b"

    const-string v2, "\ud83c\udfae"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue71d"

    const-string v2, "\ud83d\udeb2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue65e"

    const-string v2, "\ud83d\ude97"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue65f"

    const-string v2, "\ud83d\ude99"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue660"

    const-string v2, "\ud83d\ude8c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue65b"

    const-string v2, "\ud83d\ude83"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue65c"

    const-string v2, "\u24c2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue65d"

    const-string v2, "\ud83d\ude84"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6b2"

    const-string v2, "\ud83d\udcba"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue662"

    const-string v2, "\u2708"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6a3"

    const-string v2, "\u26f5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue661"

    const-string v2, "\ud83d\udea2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue663"

    const-string v2, "\ud83c\udfe0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue664"

    const-string v2, "\ud83c\udfe2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue73e"

    const-string v2, "\ud83c\udfeb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue665"

    const-string v2, "\ud83c\udfe3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue666"

    const-string v2, "\ud83c\udfe5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue667"

    const-string v2, "\ud83c\udfe6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue668"

    const-string v2, "\ud83c\udfe7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue66b"

    const-string v2, "\u26fd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue66a"

    const-string v2, "\ud83c\udfea"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue669"

    const-string v2, "\ud83c\udfe8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue66c"

    const-string v2, "\ud83c\udd7f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue66d"

    const-string v2, "\ud83d\udea5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6de"

    const-string v2, "\ud83d\udea9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue66e"

    const-string v2, "\ud83d\udebb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue740"

    const-string v2, "\ud83d\uddfb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue687"

    const-string v2, "\u260e"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue688"

    const-string v2, "\ud83d\udcf1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue716"

    const-string v2, "\ud83d\udcbb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6d0"

    const-string v2, "\ud83d\udce0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue65a"

    const-string v2, "\ud83d\udcdf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue68a"

    const-string v2, "\ud83d\udcfa"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue681"

    const-string v2, "\ud83d\udcf7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue676"

    const-string v2, "\ud83c\udfa4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue67a"

    const-string v2, "\ud83c\udfa7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue677"

    const-string v2, "\ud83c\udfa5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue67b"

    const-string v2, "\ud83c\udfa8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue67e"

    const-string v2, "\ud83c\udfab"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue68c"

    const-string v2, "\ud83d\udcbf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue71f"

    const-string v2, "\u231a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6ba"

    const-string v2, "\u23f0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue71c"

    const-string v2, "\u23f3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue70f"

    const-string v2, "\ud83d\udc5b"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue715"

    const-string v2, "\ud83d\udcb0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue719"

    const-string v2, "\u270f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6ae"

    const-string v2, "\u2712"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue730"

    const-string v2, "\ud83d\udcce"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue675"

    const-string v2, "\u2702"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue683"

    const-string v2, "\ud83d\udcd6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue689"

    const-string v2, "\ud83d\udcdd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue718"

    const-string v2, "\ud83d\udd27"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue714"

    const-string v2, "\ud83d\udeaa"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue713"

    const-string v2, "\ud83d\udd14"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6dc"

    const-string v2, "\ud83d\udd0d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue685"

    const-string v2, "\ud83c\udf81"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6d9"

    const-string v2, "\ud83d\udd11"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6ce"

    const-string v2, "\ud83d\udcf2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6d3"

    const-string v2, "\u2709"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6cf"

    const-string v2, "\ud83d\udce9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue717"

    const-string v2, "\ud83d\udc8c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue70b"

    const-string v2, "\ud83c\udd97"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue72f"

    const-string v2, "\ud83c\udd96"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6dd"

    const-string v2, "\ud83c\udd95"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6d7"

    const-string v2, "\ud83c\udd93"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6d8"

    const-string v2, "\ud83c\udd94"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6db"

    const-string v2, "\ud83c\udd91"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue738"

    const-string v2, "\ud83c\ude32"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue739"

    const-string v2, "\ud83c\ude33"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue73a"

    const-string v2, "\ud83c\ude34"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue73b"

    const-string v2, "\ud83c\ude35"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue734"

    const-string v2, "\u3299"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue680"

    const-string v2, "\ud83d\udead"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue67f"

    const-string v2, "\ud83d\udeac"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue69b"

    const-string v2, "\u267f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue735"

    const-string v2, "\u267b"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue731"

    const-string v2, "\u00a9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue736"

    const-string v2, "\u00ae"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue732"

    const-string v2, "\u2122"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6d6"

    const-string v2, "\ud83d\udcb4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6df"

    const-string v2, "\u27bf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6f8"

    const-string v2, "\ud83d\udca0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue709"

    const-string v2, "\u3030"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue70a"

    const-string v2, "\u27b0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6f5"

    const-string v2, "\u2934"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue700"

    const-string v2, "\u2935"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue73d"

    const-string v2, "\u2195"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue73c"

    const-string v2, "\u2194"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue678"

    const-string v2, "\u2197"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue696"

    const-string v2, "\u2198"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue697"

    const-string v2, "\u2196"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6a5"

    const-string v2, "\u2199"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6da"

    const-string v2, "\u21a9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6b8"

    const-string v2, "\ud83d\udd1b"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6b9"

    const-string v2, "\ud83d\udd1a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6b7"

    const-string v2, "\ud83d\udd1c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue646"

    const-string v2, "\u2648"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue647"

    const-string v2, "\u2649"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue648"

    const-string v2, "\u264a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue649"

    const-string v2, "\u264b"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue64a"

    const-string v2, "\u264c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue64b"

    const-string v2, "\u264d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue64c"

    const-string v2, "\u264e"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue64d"

    const-string v2, "\u264f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue64e"

    const-string v2, "\u2650"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue64f"

    const-string v2, "\u2651"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue650"

    const-string v2, "\u2652"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue651"

    const-string v2, "\u2653"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue68d"

    const-string v2, "\u2665"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue68e"

    const-string v2, "\u2660"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue68f"

    const-string v2, "\u2666"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue690"

    const-string v2, "\u2663"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6e0"

    const-string v2, "#\u20e3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6e2"

    const-string v2, "1\u20e3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6e3"

    const-string v2, "2\u20e3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6e4"

    const-string v2, "3\u20e3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6e5"

    const-string v2, "4\u20e3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6e6"

    const-string v2, "5\u20e3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6e7"

    const-string v2, "6\u20e3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6e8"

    const-string v2, "7\u20e3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6e9"

    const-string v2, "8\u20e3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6ea"

    const-string v2, "9\u20e3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6eb"

    const-string v2, "0\u20e3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6d1"

    const-string v2, "\udbbb\ude10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6d2"

    const-string v2, "\udbbb\ude11"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6d4"

    const-string v2, "\udbbb\ude12"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6d5"

    const-string v2, "\udbbb\ude13"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue6e1"

    const-string v2, "\udbba\udc2d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue70c"

    const-string v2, "\udbbb\ude14"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    const-string v1, "\ue70d"

    const-string v2, "\udbbb\ude15"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/vcard/unicode50to60ForDCMEmoji;->emojiStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convertMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private static getsurogateIfNeed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v7, 0x0

    const/4 v10, 0x2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x5

    if-ge v8, v9, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\\u"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_0
    return-object v7

    :cond_0
    const-string v8, "1101100000000000"

    invoke-static {v8, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    const-string v8, "1101110000000000"

    invoke-static {v8, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xa

    if-le v8, v9, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v6, v8, -0xa

    :goto_1
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    add-int/2addr v7, v3

    const-string v8, "1000000"

    invoke-static {v8, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    sub-int v0, v7, v8

    invoke-static {v4, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    add-int v1, v5, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\\u"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\\u"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    move v6, v7

    goto :goto_1
.end method
