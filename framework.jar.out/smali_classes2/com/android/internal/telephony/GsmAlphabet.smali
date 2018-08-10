.class public Lcom/android/internal/telephony/GsmAlphabet;
.super Ljava/lang/Object;
.source "GsmAlphabet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;,
        Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    }
.end annotation


# static fields
.field public static final GSM_EXTENDED_ESCAPE:B = 0x1bt

.field private static final TAG:Ljava/lang/String; = "GSM"

.field public static final UDH_SEPTET_COST_CONCATENATED_MESSAGE:I = 0x6

.field public static final UDH_SEPTET_COST_LENGTH:I = 0x1

.field public static final UDH_SEPTET_COST_ONE_SHIFT_TABLE:I = 0x4

.field public static final UDH_SEPTET_COST_TWO_SHIFT_TABLES:I = 0x7

.field private static final charToGsm:Landroid/util/SparseIntArray;

.field private static final charToGsmExtended:Landroid/util/SparseIntArray;

.field private static final gsmExtendedToChar:Landroid/util/SparseIntArray;

.field private static final gsmToChar:Landroid/util/SparseIntArray;

.field private static final sCharsToGsmTables:[Landroid/util/SparseIntArray;

.field private static final sCharsToShiftTables:[Landroid/util/SparseIntArray;

.field private static sDisableCountryEncodingCheck:Z

.field private static sEnableIgnoreSpecialChar:Z

.field private static sEnabledLockingShiftTables:[I

.field private static sEnabledSingleShiftTables:[I

.field private static sGsmSpaceChar:I

.field private static sHighestEnabledSingleShiftCode:I

.field private static final sLanguageShiftTables:[Ljava/lang/String;

.field private static final sLanguageTables:[Ljava/lang/String;


# direct methods
.method static synthetic -get0()[I
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    return-object v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 16

    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/internal/telephony/GsmAlphabet;->sDisableCountryEncodingCheck:Z

    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/internal/telephony/GsmAlphabet;->sEnableIgnoreSpecialChar:Z

    const/16 v13, 0xe

    new-array v13, v13, [Ljava/lang/String;

    const-string/jumbo v14, "@\u00a3$\u00a5\u00e8\u00e9\u00f9\u00ec\u00f2\u00c7\n\u00d8\u00f8\r\u00c5\u00e5\u0394_\u03a6\u0393\u039b\u03a9\u03a0\u03a8\u03a3\u0398\u039e\uffff\u00c6\u00e6\u00df\u00c9 !\"#\u00a4%&\'()*+,-./0123456789:;<=>?\u00a1ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c4\u00d6\u00d1\u00dc\u00a7\u00bfabcdefghijklmnopqrstuvwxyz\u00e4\u00f6\u00f1\u00fc\u00e0"

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const-string/jumbo v14, "@\u00a3$\u00a5\u20ac\u00e9\u00f9\u0131\u00f2\u00c7\n\u011e\u011f\r\u00c5\u00e5\u0394_\u03a6\u0393\u039b\u03a9\u03a0\u03a8\u03a3\u0398\u039e\uffff\u015e\u015f\u00df\u00c9 !\"#\u00a4%&\'()*+,-./0123456789:;<=>?\u0130ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c4\u00d6\u00d1\u00dc\u00a7\u00e7abcdefghijklmnopqrstuvwxyz\u00e4\u00f6\u00f1\u00fc\u00e0"

    const/4 v15, 0x1

    aput-object v14, v13, v15

    const-string/jumbo v14, ""

    const/4 v15, 0x2

    aput-object v14, v13, v15

    const-string/jumbo v14, "@\u00a3$\u00a5\u00ea\u00e9\u00fa\u00ed\u00f3\u00e7\n\u00d4\u00f4\r\u00c1\u00e1\u0394_\u00aa\u00c7\u00c0\u221e^\\\u20ac\u00d3|\uffff\u00c2\u00e2\u00ca\u00c9 !\"#\u00ba%&\'()*+,-./0123456789:;<=>?\u00cdABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c3\u00d5\u00da\u00dc\u00a7~abcdefghijklmnopqrstuvwxyz\u00e3\u00f5`\u00fc\u00e0"

    const/4 v15, 0x3

    aput-object v14, v13, v15

    const-string/jumbo v14, "\u0981\u0982\u0983\u0985\u0986\u0987\u0988\u0989\u098a\u098b\n\u098c \r \u098f\u0990  \u0993\u0994\u0995\u0996\u0997\u0998\u0999\u099a\uffff\u099b\u099c\u099d\u099e !\u099f\u09a0\u09a1\u09a2\u09a3\u09a4)(\u09a5\u09a6,\u09a7.\u09a80123456789:; \u09aa\u09ab?\u09ac\u09ad\u09ae\u09af\u09b0 \u09b2   \u09b6\u09b7\u09b8\u09b9\u09bc\u09bd\u09be\u09bf\u09c0\u09c1\u09c2\u09c3\u09c4  \u09c7\u09c8  \u09cb\u09cc\u09cd\u09ceabcdefghijklmnopqrstuvwxyz\u09d7\u09dc\u09dd\u09f0\u09f1"

    const/4 v15, 0x4

    aput-object v14, v13, v15

    const-string/jumbo v14, "\u0a81\u0a82\u0a83\u0a85\u0a86\u0a87\u0a88\u0a89\u0a8a\u0a8b\n\u0a8c\u0a8d\r \u0a8f\u0a90\u0a91 \u0a93\u0a94\u0a95\u0a96\u0a97\u0a98\u0a99\u0a9a\uffff\u0a9b\u0a9c\u0a9d\u0a9e !\u0a9f\u0aa0\u0aa1\u0aa2\u0aa3\u0aa4)(\u0aa5\u0aa6,\u0aa7.\u0aa80123456789:; \u0aaa\u0aab?\u0aac\u0aad\u0aae\u0aaf\u0ab0 \u0ab2\u0ab3 \u0ab5\u0ab6\u0ab7\u0ab8\u0ab9\u0abc\u0abd\u0abe\u0abf\u0ac0\u0ac1\u0ac2\u0ac3\u0ac4\u0ac5 \u0ac7\u0ac8\u0ac9 \u0acb\u0acc\u0acd\u0ad0abcdefghijklmnopqrstuvwxyz\u0ae0\u0ae1\u0ae2\u0ae3\u0af1"

    const/4 v15, 0x5

    aput-object v14, v13, v15

    const-string/jumbo v14, "\u0901\u0902\u0903\u0905\u0906\u0907\u0908\u0909\u090a\u090b\n\u090c\u090d\r\u090e\u090f\u0910\u0911\u0912\u0913\u0914\u0915\u0916\u0917\u0918\u0919\u091a\uffff\u091b\u091c\u091d\u091e !\u091f\u0920\u0921\u0922\u0923\u0924)(\u0925\u0926,\u0927.\u09280123456789:;\u0929\u092a\u092b?\u092c\u092d\u092e\u092f\u0930\u0931\u0932\u0933\u0934\u0935\u0936\u0937\u0938\u0939\u093c\u093d\u093e\u093f\u0940\u0941\u0942\u0943\u0944\u0945\u0946\u0947\u0948\u0949\u094a\u094b\u094c\u094d\u0950abcdefghijklmnopqrstuvwxyz\u0972\u097b\u097c\u097e\u097f"

    const/4 v15, 0x6

    aput-object v14, v13, v15

    const-string/jumbo v14, " \u0c82\u0c83\u0c85\u0c86\u0c87\u0c88\u0c89\u0c8a\u0c8b\n\u0c8c \r\u0c8e\u0c8f\u0c90 \u0c92\u0c93\u0c94\u0c95\u0c96\u0c97\u0c98\u0c99\u0c9a\uffff\u0c9b\u0c9c\u0c9d\u0c9e !\u0c9f\u0ca0\u0ca1\u0ca2\u0ca3\u0ca4)(\u0ca5\u0ca6,\u0ca7.\u0ca80123456789:; \u0caa\u0cab?\u0cac\u0cad\u0cae\u0caf\u0cb0\u0cb1\u0cb2\u0cb3 \u0cb5\u0cb6\u0cb7\u0cb8\u0cb9\u0cbc\u0cbd\u0cbe\u0cbf\u0cc0\u0cc1\u0cc2\u0cc3\u0cc4 \u0cc6\u0cc7\u0cc8 \u0cca\u0ccb\u0ccc\u0ccd\u0cd5abcdefghijklmnopqrstuvwxyz\u0cd6\u0ce0\u0ce1\u0ce2\u0ce3"

    const/4 v15, 0x7

    aput-object v14, v13, v15

    const-string/jumbo v14, " \u0d02\u0d03\u0d05\u0d06\u0d07\u0d08\u0d09\u0d0a\u0d0b\n\u0d0c \r\u0d0e\u0d0f\u0d10 \u0d12\u0d13\u0d14\u0d15\u0d16\u0d17\u0d18\u0d19\u0d1a\uffff\u0d1b\u0d1c\u0d1d\u0d1e !\u0d1f\u0d20\u0d21\u0d22\u0d23\u0d24)(\u0d25\u0d26,\u0d27.\u0d280123456789:; \u0d2a\u0d2b?\u0d2c\u0d2d\u0d2e\u0d2f\u0d30\u0d31\u0d32\u0d33\u0d34\u0d35\u0d36\u0d37\u0d38\u0d39 \u0d3d\u0d3e\u0d3f\u0d40\u0d41\u0d42\u0d43\u0d44 \u0d46\u0d47\u0d48 \u0d4a\u0d4b\u0d4c\u0d4d\u0d57abcdefghijklmnopqrstuvwxyz\u0d60\u0d61\u0d62\u0d63\u0d79"

    const/16 v15, 0x8

    aput-object v14, v13, v15

    const-string/jumbo v14, "\u0b01\u0b02\u0b03\u0b05\u0b06\u0b07\u0b08\u0b09\u0b0a\u0b0b\n\u0b0c \r \u0b0f\u0b10  \u0b13\u0b14\u0b15\u0b16\u0b17\u0b18\u0b19\u0b1a\uffff\u0b1b\u0b1c\u0b1d\u0b1e !\u0b1f\u0b20\u0b21\u0b22\u0b23\u0b24)(\u0b25\u0b26,\u0b27.\u0b280123456789:; \u0b2a\u0b2b?\u0b2c\u0b2d\u0b2e\u0b2f\u0b30 \u0b32\u0b33 \u0b35\u0b36\u0b37\u0b38\u0b39\u0b3c\u0b3d\u0b3e\u0b3f\u0b40\u0b41\u0b42\u0b43\u0b44  \u0b47\u0b48  \u0b4b\u0b4c\u0b4d\u0b56abcdefghijklmnopqrstuvwxyz\u0b57\u0b60\u0b61\u0b62\u0b63"

    const/16 v15, 0x9

    aput-object v14, v13, v15

    const-string/jumbo v14, "\u0a01\u0a02\u0a03\u0a05\u0a06\u0a07\u0a08\u0a09\u0a0a \n  \r \u0a0f\u0a10  \u0a13\u0a14\u0a15\u0a16\u0a17\u0a18\u0a19\u0a1a\uffff\u0a1b\u0a1c\u0a1d\u0a1e !\u0a1f\u0a20\u0a21\u0a22\u0a23\u0a24)(\u0a25\u0a26,\u0a27.\u0a280123456789:; \u0a2a\u0a2b?\u0a2c\u0a2d\u0a2e\u0a2f\u0a30 \u0a32\u0a33 \u0a35\u0a36 \u0a38\u0a39\u0a3c \u0a3e\u0a3f\u0a40\u0a41\u0a42    \u0a47\u0a48  \u0a4b\u0a4c\u0a4d\u0a51abcdefghijklmnopqrstuvwxyz\u0a70\u0a71\u0a72\u0a73\u0a74"

    const/16 v15, 0xa

    aput-object v14, v13, v15

    const-string/jumbo v14, " \u0b82\u0b83\u0b85\u0b86\u0b87\u0b88\u0b89\u0b8a \n  \r\u0b8e\u0b8f\u0b90 \u0b92\u0b93\u0b94\u0b95   \u0b99\u0b9a\uffff \u0b9c \u0b9e !\u0b9f   \u0ba3\u0ba4)(  , .\u0ba80123456789:;\u0ba9\u0baa ?  \u0bae\u0baf\u0bb0\u0bb1\u0bb2\u0bb3\u0bb4\u0bb5\u0bb6\u0bb7\u0bb8\u0bb9  \u0bbe\u0bbf\u0bc0\u0bc1\u0bc2   \u0bc6\u0bc7\u0bc8 \u0bca\u0bcb\u0bcc\u0bcd\u0bd0abcdefghijklmnopqrstuvwxyz\u0bd7\u0bf0\u0bf1\u0bf2\u0bf9"

    const/16 v15, 0xb

    aput-object v14, v13, v15

    const-string/jumbo v14, "\u0c01\u0c02\u0c03\u0c05\u0c06\u0c07\u0c08\u0c09\u0c0a\u0c0b\n\u0c0c \r\u0c0e\u0c0f\u0c10 \u0c12\u0c13\u0c14\u0c15\u0c16\u0c17\u0c18\u0c19\u0c1a\uffff\u0c1b\u0c1c\u0c1d\u0c1e !\u0c1f\u0c20\u0c21\u0c22\u0c23\u0c24)(\u0c25\u0c26,\u0c27.\u0c280123456789:; \u0c2a\u0c2b?\u0c2c\u0c2d\u0c2e\u0c2f\u0c30\u0c31\u0c32\u0c33 \u0c35\u0c36\u0c37\u0c38\u0c39 \u0c3d\u0c3e\u0c3f\u0c40\u0c41\u0c42\u0c43\u0c44 \u0c46\u0c47\u0c48 \u0c4a\u0c4b\u0c4c\u0c4d\u0c55abcdefghijklmnopqrstuvwxyz\u0c56\u0c60\u0c61\u0c62\u0c63"

    const/16 v15, 0xc

    aput-object v14, v13, v15

    const-string/jumbo v14, "\u0627\u0622\u0628\u067b\u0680\u067e\u06a6\u062a\u06c2\u067f\n\u0679\u067d\r\u067a\u067c\u062b\u062c\u0681\u0684\u0683\u0685\u0686\u0687\u062d\u062e\u062f\uffff\u068c\u0688\u0689\u068a !\u068f\u068d\u0630\u0631\u0691\u0693)(\u0699\u0632,\u0696.\u06980123456789:;\u069a\u0633\u0634?\u0635\u0636\u0637\u0638\u0639\u0641\u0642\u06a9\u06aa\u06ab\u06af\u06b3\u06b1\u0644\u0645\u0646\u06ba\u06bb\u06bc\u0648\u06c4\u06d5\u06c1\u06be\u0621\u06cc\u06d0\u06d2\u064d\u0650\u064f\u0657\u0654abcdefghijklmnopqrstuvwxyz\u0655\u0651\u0653\u0656\u0670"

    const/16 v15, 0xd

    aput-object v14, v13, v15

    sput-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    const/16 v13, 0xe

    new-array v13, v13, [Ljava/lang/String;

    const-string/jumbo v14, "          \u000c         ^                   {}     \\            [~] |                                    \u20ac                          "

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const-string/jumbo v14, "          \u000c         ^                   {}     \\            [~] |      \u011e \u0130         \u015e               \u00e7 \u20ac \u011f \u0131         \u015f            "

    const/4 v15, 0x1

    aput-object v14, v13, v15

    const-string/jumbo v14, "         \u00e7\u000c         ^                   {}     \\            [~] |\u00c1       \u00cd     \u00d3     \u00da           \u00e1   \u20ac   \u00ed     \u00f3     \u00fa          "

    const/4 v15, 0x2

    aput-object v14, v13, v15

    const-string/jumbo v14, "     \u00ea   \u00e7\u000c\u00d4\u00f4 \u00c1\u00e1  \u03a6\u0393^\u03a9\u03a0\u03a8\u03a3\u0398     \u00ca        {}     \\            [~] |\u00c0       \u00cd     \u00d3     \u00da     \u00c3\u00d5    \u00c2   \u20ac   \u00ed     \u00f3     \u00fa     \u00e3\u00f5  \u00e2"

    const/4 v15, 0x3

    aput-object v14, v13, v15

    const-string/jumbo v14, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u09e6\u09e7 \u09e8\u09e9\u09ea\u09eb\u09ec\u09ed\u09ee\u09ef\u09df\u09e0\u09e1\u09e2{}\u09e3\u09f2\u09f3\u09f4\u09f5\\\u09f6\u09f7\u09f8\u09f9\u09fa       [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const/4 v15, 0x4

    aput-object v14, v13, v15

    const-string/jumbo v14, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0ae6\u0ae7\u0ae8\u0ae9\u0aea\u0aeb\u0aec\u0aed\u0aee\u0aef  {}     \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const/4 v15, 0x5

    aput-object v14, v13, v15

    const-string/jumbo v14, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0966\u0967\u0968\u0969\u096a\u096b\u096c\u096d\u096e\u096f\u0951\u0952{}\u0953\u0954\u0958\u0959\u095a\\\u095b\u095c\u095d\u095e\u095f\u0960\u0961\u0962\u0963\u0970\u0971 [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const/4 v15, 0x6

    aput-object v14, v13, v15

    const-string/jumbo v14, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0ce6\u0ce7\u0ce8\u0ce9\u0cea\u0ceb\u0cec\u0ced\u0cee\u0cef\u0cde\u0cf1{}\u0cf2    \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const/4 v15, 0x7

    aput-object v14, v13, v15

    const-string/jumbo v14, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0d66\u0d67\u0d68\u0d69\u0d6a\u0d6b\u0d6c\u0d6d\u0d6e\u0d6f\u0d70\u0d71{}\u0d72\u0d73\u0d74\u0d75\u0d7a\\\u0d7b\u0d7c\u0d7d\u0d7e\u0d7f       [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const/16 v15, 0x8

    aput-object v14, v13, v15

    const-string/jumbo v14, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0b66\u0b67\u0b68\u0b69\u0b6a\u0b6b\u0b6c\u0b6d\u0b6e\u0b6f\u0b5c\u0b5d{}\u0b5f\u0b70\u0b71  \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const/16 v15, 0x9

    aput-object v14, v13, v15

    const-string/jumbo v14, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0a66\u0a67\u0a68\u0a69\u0a6a\u0a6b\u0a6c\u0a6d\u0a6e\u0a6f\u0a59\u0a5a{}\u0a5b\u0a5c\u0a5e\u0a75 \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const/16 v15, 0xa

    aput-object v14, v13, v15

    const-string/jumbo v14, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0be6\u0be7\u0be8\u0be9\u0bea\u0beb\u0bec\u0bed\u0bee\u0bef\u0bf3\u0bf4{}\u0bf5\u0bf6\u0bf7\u0bf8\u0bfa\\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const/16 v15, 0xb

    aput-object v14, v13, v15

    const-string/jumbo v14, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*   \u0c66\u0c67\u0c68\u0c69\u0c6a\u0c6b\u0c6c\u0c6d\u0c6e\u0c6f\u0c58\u0c59{}\u0c78\u0c79\u0c7a\u0c7b\u0c7c\\\u0c7d\u0c7e\u0c7f         [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const/16 v15, 0xc

    aput-object v14, v13, v15

    const-string/jumbo v14, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0600\u0601 \u06f0\u06f1\u06f2\u06f3\u06f4\u06f5\u06f6\u06f7\u06f8\u06f9\u060c\u060d{}\u060e\u060f\u0610\u0611\u0612\\\u0613\u0614\u061b\u061f\u0640\u0652\u0658\u066b\u066c\u0672\u0673\u06cd[~]\u06d4|ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const/16 v15, 0xd

    aput-object v14, v13, v15

    sput-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->enableCountrySpecificEncodings()V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    array-length v7, v13

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    array-length v6, v13

    if-eq v7, v6, :cond_0

    const-string/jumbo v13, "GSM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error: language tables array length "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " != shift tables array length "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-array v13, v7, [Landroid/util/SparseIntArray;

    sput-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v7, :cond_3

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v11, v13, v3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_1

    const/16 v13, 0x80

    if-eq v12, v13, :cond_1

    const-string/jumbo v13, "GSM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error: language tables index "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " length "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " (expected 128 or 0)"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1, v12}, Landroid/util/SparseIntArray;-><init>(I)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aput-object v1, v13, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v12, :cond_2

    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-array v13, v7, [Landroid/util/SparseIntArray;

    sput-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v6, :cond_7

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v8, v13, v3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_4

    const/16 v13, 0x80

    if-eq v9, v13, :cond_4

    const-string/jumbo v13, "GSM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error: language shift tables index "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " length "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " (expected 128 or 0)"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2, v9}, Landroid/util/SparseIntArray;-><init>(I)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aput-object v2, v13, v3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v9, :cond_6

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v13, 0x20

    if-eq v0, v13, :cond_5

    invoke-virtual {v2, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    new-instance v13, Landroid/util/SparseIntArray;

    invoke-direct {v13}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    new-instance v13, Landroid/util/SparseIntArray;

    invoke-direct {v13}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v13, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    new-instance v13, Landroid/util/SparseIntArray;

    invoke-direct {v13}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    new-instance v13, Landroid/util/SparseIntArray;

    invoke-direct {v13}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v13, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x40

    const/4 v15, 0x0

    const/4 v3, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xa3

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x24

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xa5

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xe8

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xe9

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xf9

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xec

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xf2

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xc7

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xa

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xd8

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xf8

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xd

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xc5

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xe5

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x394

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x5f

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x3a6

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x393

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x39b

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x3a9

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x3a0

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x3a8

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x3a3

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x398

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x39e

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const v14, 0xffff

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xc6

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xe6

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xdf

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xc9

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x20

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x21

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x22

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x23

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xa4

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x25

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x26

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x27

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x28

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x29

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x2a

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x2b

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x2c

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x2d

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x2e

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x2f

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x30

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x31

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x32

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x33

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x34

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x35

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x36

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x37

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x38

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x39

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x3a

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x3b

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x3c

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x3d

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x3e

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x3f

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xa1

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x41

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x42

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x43

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x44

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x45

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x46

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x47

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x48

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x49

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x4a

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x4b

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x4c

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x4d

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x4e

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x4f

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x50

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x51

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x52

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x53

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x54

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x55

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x56

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x57

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x58

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x59

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x5a

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xc4

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xd6

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xd1

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xdc

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xa7

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xbf

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x61

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x62

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x63

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x64

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x65

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x66

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x67

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x68

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x69

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x6a

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x6b

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x6c

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x6d

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x6e

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x6f

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x70

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x71

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x72

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x73

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x74

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x75

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x76

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x77

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x78

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x79

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x7a

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xe4

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xf6

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xf1

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xfc

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xe0

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v14, 0xc

    const/16 v15, 0xa

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v14, 0x5e

    const/16 v15, 0x14

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v14, 0x7b

    const/16 v15, 0x28

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v14, 0x7d

    const/16 v15, 0x29

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v14, 0x5c

    const/16 v15, 0x2f

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v14, 0x5b

    const/16 v15, 0x3c

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v14, 0x7e

    const/16 v15, 0x3d

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v14, 0x5d

    const/16 v15, 0x3e

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v14, 0x7c

    const/16 v15, 0x40

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v14, 0x20ac

    const/16 v15, 0x65

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v10, :cond_8

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    sget-object v14, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v14

    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v10, :cond_9

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    sget-object v14, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v14

    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x20

    invoke-virtual {v13, v14}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    sput v13, Lcom/android/internal/telephony/GsmAlphabet;->sGsmSpaceChar:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CountGsmSeptetsWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 29

    const-string/jumbo v26, "GSM"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "sEnabledSingleShiftTables.length + sEnabledLockingShiftTables.length == 0: "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-object v25, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    sget-object v28, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    add-int v25, v25, v28

    if-nez v25, :cond_0

    const/16 v25, 0x1

    :goto_0
    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v25, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    sget-object v26, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    add-int v25, v25, v26

    if-nez v25, :cond_a

    new-instance v22, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v14

    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v14, v0, :cond_1

    const/16 v25, 0x0

    return-object v25

    :cond_0
    const/16 v25, 0x0

    goto :goto_0

    :cond_1
    if-lez p2, :cond_3

    move/from16 v0, p2

    rsub-int v0, v0, 0xa0

    move/from16 v25, v0

    add-int/lit8 v9, v25, -0x1

    :goto_1
    const/4 v10, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v25

    const-string/jumbo v26, "CscFeature_RIL_SegmentedSms"

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_5

    if-lez p2, :cond_4

    move/from16 v0, p2

    rsub-int v0, v0, 0x99

    move/from16 v25, v0

    add-int/lit8 v10, v25, -0x1

    :goto_2
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v14, v0, :cond_7

    if-gt v14, v9, :cond_7

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    move-object/from16 v0, v22

    iput v14, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    sub-int v25, v9, v14

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    :cond_2
    :goto_3
    return-object v22

    :cond_3
    const/16 v9, 0xa0

    goto :goto_1

    :cond_4
    const/16 v10, 0x99

    goto :goto_2

    :cond_5
    if-lez p2, :cond_6

    move/from16 v0, p2

    rsub-int v0, v0, 0x9a

    move/from16 v25, v0

    add-int/lit8 v10, v25, -0x1

    goto :goto_2

    :cond_6
    const/16 v10, 0x9a

    goto :goto_2

    :cond_7
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v14, v0, :cond_2

    move-object/from16 v0, v22

    iput v14, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    if-le v14, v9, :cond_9

    add-int/lit8 v25, v10, -0x1

    add-int v25, v25, v14

    div-int v25, v25, v10

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    rem-int v25, v14, v10

    if-lez v25, :cond_8

    rem-int v25, v14, v10

    sub-int v25, v10, v25

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    :goto_4
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    goto :goto_3

    :cond_8
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_4

    :cond_9
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    sub-int v25, v9, v14

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_4

    :cond_a
    sget v11, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    new-instance v8, Ljava/util/ArrayList;

    sget-object v25, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v25, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    const/16 v26, 0x0

    invoke-direct/range {v25 .. v26}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    move-object/from16 v0, v25

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v26, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    const/16 v25, 0x0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    :goto_5
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_c

    aget v5, v26, v25

    if-eqz v5, :cond_b

    sget-object v28, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v28, v28, v5

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->isEmpty()Z

    move-result v28

    xor-int/lit8 v28, v28, 0x1

    if-eqz v28, :cond_b

    new-instance v28, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    move-object/from16 v0, v28

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    move-object/from16 v0, v28

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v25, v25, 0x1

    goto :goto_5

    :cond_c
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v19

    const/4 v5, 0x0

    :goto_6
    move/from16 v0, v19

    if-ge v5, v0, :cond_15

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v25

    xor-int/lit8 v25, v25, 0x1

    if-eqz v25, :cond_15

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v25, 0x1b

    move/from16 v0, v25

    if-ne v4, v0, :cond_e

    const-string/jumbo v25, "GSM"

    const-string/jumbo v26, "countGsmSeptets() string contains Escape character, ignoring!"

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_e
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    sget-object v25, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    iget v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v26, v0

    aget-object v25, v25, v26

    const/16 v26, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v21

    const/16 v25, -0x1

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_13

    const/16 v20, 0x0

    :goto_7
    move/from16 v0, v20

    if-gt v0, v11, :cond_f

    iget-object v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v25, v25, v20

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_10

    sget-object v25, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v25, v25, v20

    const/16 v26, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v18

    const/16 v25, -0x1

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_12

    if-eqz p1, :cond_11

    iget-object v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v26, v25, v20

    add-int/lit8 v26, v26, 0x1

    aput v26, v25, v20

    iget-object v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    move-object/from16 v25, v0

    aget v26, v25, v20

    add-int/lit8 v26, v26, 0x1

    aput v26, v25, v20

    :cond_10
    :goto_8
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    :cond_11
    iget-object v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    const/16 v26, -0x1

    aput v26, v25, v20

    goto :goto_8

    :cond_12
    iget-object v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v26, v25, v20

    add-int/lit8 v26, v26, 0x2

    aput v26, v25, v20

    goto :goto_8

    :cond_13
    const/16 v20, 0x0

    :goto_9
    move/from16 v0, v20

    if-gt v0, v11, :cond_f

    iget-object v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v25, v25, v20

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_14

    iget-object v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v26, v25, v20

    add-int/lit8 v26, v26, 0x1

    aput v26, v25, v20

    :cond_14
    add-int/lit8 v20, v20, 0x1

    goto :goto_9

    :cond_15
    new-instance v22, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    const v25, 0x7fffffff

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const v12, 0x7fffffff

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_16
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_21

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    const/16 v17, 0x0

    :goto_a
    move/from16 v0, v17

    if-gt v0, v11, :cond_16

    iget-object v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v14, v25, v17

    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v14, v0, :cond_18

    :cond_17
    :goto_b
    add-int/lit8 v17, v17, 0x1

    goto :goto_a

    :cond_18
    iget v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v25, v0

    if-eqz v25, :cond_1c

    if-eqz v17, :cond_1c

    const/16 v23, 0x8

    :goto_c
    add-int v25, v14, v23

    const/16 v26, 0xa0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_1f

    if-nez v23, :cond_19

    const/16 v23, 0x1

    :cond_19
    add-int/lit8 v23, v23, 0x6

    move/from16 v0, v23

    rsub-int v15, v0, 0xa0

    add-int v25, v14, v15

    add-int/lit8 v25, v25, -0x1

    div-int v13, v25, v15

    mul-int v25, v13, v15

    sub-int v16, v25, v14

    :goto_d
    iget-object v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    move-object/from16 v25, v0

    aget v24, v25, v17

    if-eqz p1, :cond_1a

    move/from16 v0, v24

    if-gt v0, v12, :cond_17

    :cond_1a
    if-eqz p1, :cond_20

    move/from16 v0, v24

    if-ge v0, v12, :cond_20

    :cond_1b
    :goto_e
    move/from16 v12, v24

    move-object/from16 v0, v22

    iput v13, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    move-object/from16 v0, v22

    iput v14, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    move/from16 v0, v16

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    iget v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    move/from16 v0, v17

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    goto :goto_b

    :cond_1c
    iget v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v25, v0

    if-nez v25, :cond_1d

    if-eqz v17, :cond_1e

    :cond_1d
    const/16 v23, 0x5

    goto :goto_c

    :cond_1e
    const/16 v23, 0x0

    goto :goto_c

    :cond_1f
    const/4 v13, 0x1

    move/from16 v0, v23

    rsub-int v0, v0, 0xa0

    move/from16 v25, v0

    sub-int v16, v25, v14

    goto :goto_d

    :cond_20
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-lt v13, v0, :cond_1b

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v13, v0, :cond_17

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-le v0, v1, :cond_17

    goto :goto_e

    :cond_21
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    move/from16 v25, v0

    const v26, 0x7fffffff

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_22

    const/16 v25, 0x0

    return-object v25

    :cond_22
    return-object v22
.end method

.method public static charToGsm(C)I
    .locals 4

    const/16 v3, 0x20

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(CZ)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    return v1
.end method

.method public static charToGsm(CZ)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    const/16 v4, 0x20

    const/4 v3, 0x0

    const/4 v2, -0x1

    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v2, :cond_2

    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v2, :cond_1

    if-eqz p1, :cond_0

    new-instance v1, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    return v1

    :cond_1
    const/16 v1, 0x1b

    return v1

    :cond_2
    return v0
.end method

.method public static charToGsmExtended(C)I
    .locals 5

    const/16 v4, 0x20

    const/4 v3, 0x0

    const/4 v2, -0x1

    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    return v1

    :cond_0
    return v0
.end method

.method public static convertEachCharacter(C)C
    .locals 4

    const/4 v3, -0x1

    move v0, p0

    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    array-length v1, v1

    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    array-length v2, v2

    add-int/2addr v1, v2

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v3, :cond_1

    move v0, p0

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v3, :cond_2

    move v0, p0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->convertNonGSMCharacter(C)C

    move-result v0

    goto :goto_0
.end method

.method private static convertNonGSMCharacter(C)C
    .locals 4

    move v0, p0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "temp char :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sparse-switch p0, :sswitch_data_0

    const/16 v1, 0x7f

    if-gt p0, v1, :cond_0

    const/16 v1, 0x60

    if-ne p0, v1, :cond_1

    :cond_0
    const/16 v1, 0x80

    if-ne p0, v1, :cond_2

    const/16 v0, 0x20

    :cond_1
    :goto_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "temp char :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0

    :sswitch_0
    const/16 v0, 0x61

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x61

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x61

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x61

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x61

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x41

    goto :goto_0

    :sswitch_6
    const/16 v0, 0x41

    goto :goto_0

    :sswitch_7
    const/16 v0, 0x41

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x41

    goto :goto_0

    :sswitch_9
    const/16 v0, 0x41

    goto :goto_0

    :sswitch_a
    const/16 v0, 0x41

    goto :goto_0

    :sswitch_b
    const/16 v0, 0x63

    goto :goto_0

    :sswitch_c
    const/16 v0, 0x63

    goto :goto_0

    :sswitch_d
    const/16 v0, 0x63

    goto :goto_0

    :sswitch_e
    const/16 v0, 0x43

    goto :goto_0

    :sswitch_f
    const/16 v0, 0x43

    goto :goto_0

    :sswitch_10
    const/16 v0, 0x64

    goto :goto_0

    :sswitch_11
    const/16 v0, 0x44

    goto :goto_0

    :sswitch_12
    const/16 v0, 0x65

    goto :goto_0

    :sswitch_13
    const/16 v0, 0x65

    goto :goto_0

    :sswitch_14
    const/16 v0, 0x65

    goto :goto_0

    :sswitch_15
    const/16 v0, 0x65

    goto :goto_0

    :sswitch_16
    const/16 v0, 0x65

    goto :goto_0

    :sswitch_17
    const/16 v0, 0x45

    goto :goto_0

    :sswitch_18
    const/16 v0, 0x45

    goto :goto_0

    :sswitch_19
    const/16 v0, 0x45

    goto :goto_0

    :sswitch_1a
    const/16 v0, 0x45

    goto :goto_0

    :sswitch_1b
    const/16 v0, 0x45

    goto :goto_0

    :sswitch_1c
    const/16 v0, 0x45

    goto :goto_0

    :sswitch_1d
    const/16 v0, 0x67

    goto :goto_0

    :sswitch_1e
    const/16 v0, 0x47

    goto :goto_0

    :sswitch_1f
    const/16 v0, 0x69

    goto :goto_0

    :sswitch_20
    const/16 v0, 0x69

    goto :goto_0

    :sswitch_21
    const/16 v0, 0x69

    goto :goto_0

    :sswitch_22
    const/16 v0, 0x69

    goto/16 :goto_0

    :sswitch_23
    const/16 v0, 0x69

    goto/16 :goto_0

    :sswitch_24
    const/16 v0, 0x49

    goto/16 :goto_0

    :sswitch_25
    const/16 v0, 0x49

    goto/16 :goto_0

    :sswitch_26
    const/16 v0, 0x49

    goto/16 :goto_0

    :sswitch_27
    const/16 v0, 0x49

    goto/16 :goto_0

    :sswitch_28
    const/16 v0, 0x49

    goto/16 :goto_0

    :sswitch_29
    const/16 v0, 0x49

    goto/16 :goto_0

    :sswitch_2a
    const/16 v0, 0x6c

    goto/16 :goto_0

    :sswitch_2b
    const/16 v0, 0x6c

    goto/16 :goto_0

    :sswitch_2c
    const/16 v0, 0x6c

    goto/16 :goto_0

    :sswitch_2d
    const/16 v0, 0x4c

    goto/16 :goto_0

    :sswitch_2e
    const/16 v0, 0x4c

    goto/16 :goto_0

    :sswitch_2f
    const/16 v0, 0x4c

    goto/16 :goto_0

    :sswitch_30
    const/16 v0, 0x6e

    goto/16 :goto_0

    :sswitch_31
    const/16 v0, 0x6e

    goto/16 :goto_0

    :sswitch_32
    const/16 v0, 0x4e

    goto/16 :goto_0

    :sswitch_33
    const/16 v0, 0x4e

    goto/16 :goto_0

    :sswitch_34
    const/16 v0, 0x6f

    goto/16 :goto_0

    :sswitch_35
    const/16 v0, 0x6f

    goto/16 :goto_0

    :sswitch_36
    const/16 v0, 0x6f

    goto/16 :goto_0

    :sswitch_37
    const/16 v0, 0x6f

    goto/16 :goto_0

    :sswitch_38
    const/16 v0, 0x6f

    goto/16 :goto_0

    :sswitch_39
    const/16 v0, 0x4f

    goto/16 :goto_0

    :sswitch_3a
    const/16 v0, 0x4f

    goto/16 :goto_0

    :sswitch_3b
    const/16 v0, 0x4f

    goto/16 :goto_0

    :sswitch_3c
    const/16 v0, 0x4f

    goto/16 :goto_0

    :sswitch_3d
    const/16 v0, 0x4f

    goto/16 :goto_0

    :sswitch_3e
    const/16 v0, 0x4f

    goto/16 :goto_0

    :sswitch_3f
    const/16 v0, 0x72

    goto/16 :goto_0

    :sswitch_40
    const/16 v0, 0x72

    goto/16 :goto_0

    :sswitch_41
    const/16 v0, 0x52

    goto/16 :goto_0

    :sswitch_42
    const/16 v0, 0x52

    goto/16 :goto_0

    :sswitch_43
    const/16 v0, 0x73

    goto/16 :goto_0

    :sswitch_44
    const/16 v0, 0x73

    goto/16 :goto_0

    :sswitch_45
    const/16 v0, 0x73

    goto/16 :goto_0

    :sswitch_46
    const/16 v0, 0x53

    goto/16 :goto_0

    :sswitch_47
    const/16 v0, 0x53

    goto/16 :goto_0

    :sswitch_48
    const/16 v0, 0x53

    goto/16 :goto_0

    :sswitch_49
    const/16 v0, 0x74

    goto/16 :goto_0

    :sswitch_4a
    const/16 v0, 0x54

    goto/16 :goto_0

    :sswitch_4b
    const/16 v0, 0x75

    goto/16 :goto_0

    :sswitch_4c
    const/16 v0, 0x75

    goto/16 :goto_0

    :sswitch_4d
    const/16 v0, 0x75

    goto/16 :goto_0

    :sswitch_4e
    const/16 v0, 0x75

    goto/16 :goto_0

    :sswitch_4f
    const/16 v0, 0x55

    goto/16 :goto_0

    :sswitch_50
    const/16 v0, 0x55

    goto/16 :goto_0

    :sswitch_51
    const/16 v0, 0x55

    goto/16 :goto_0

    :sswitch_52
    const/16 v0, 0x55

    goto/16 :goto_0

    :sswitch_53
    const/16 v0, 0x55

    goto/16 :goto_0

    :sswitch_54
    const/16 v0, 0x79

    goto/16 :goto_0

    :sswitch_55
    const/16 v0, 0x79

    goto/16 :goto_0

    :sswitch_56
    const/16 v0, 0x59

    goto/16 :goto_0

    :sswitch_57
    const/16 v0, 0x59

    goto/16 :goto_0

    :sswitch_58
    const/16 v0, 0x7a

    goto/16 :goto_0

    :sswitch_59
    const/16 v0, 0x7a

    goto/16 :goto_0

    :sswitch_5a
    const/16 v0, 0x7a

    goto/16 :goto_0

    :sswitch_5b
    const/16 v0, 0x5a

    goto/16 :goto_0

    :sswitch_5c
    const/16 v0, 0x5a

    goto/16 :goto_0

    :sswitch_5d
    const/16 v0, 0x5a

    goto/16 :goto_0

    :sswitch_5e
    const/16 v0, 0x45

    goto/16 :goto_0

    :sswitch_5f
    const/16 v0, 0x50

    goto/16 :goto_0

    :sswitch_60
    const/16 v0, 0x54

    goto/16 :goto_0

    :sswitch_61
    const/16 v0, 0x59

    goto/16 :goto_0

    :sswitch_62
    const/16 v0, 0x49

    goto/16 :goto_0

    :sswitch_63
    const/16 v0, 0x4f

    goto/16 :goto_0

    :sswitch_64
    const/16 v0, 0x41

    goto/16 :goto_0

    :sswitch_65
    const/16 v0, 0x48

    goto/16 :goto_0

    :sswitch_66
    const/16 v0, 0x4b

    goto/16 :goto_0

    :sswitch_67
    const/16 v0, 0x5a

    goto/16 :goto_0

    :sswitch_68
    const/16 v0, 0x58

    goto/16 :goto_0

    :sswitch_69
    const/16 v0, 0x42

    goto/16 :goto_0

    :sswitch_6a
    const/16 v0, 0x4e

    goto/16 :goto_0

    :sswitch_6b
    const/16 v0, 0x4d

    goto/16 :goto_0

    :sswitch_6c
    const/16 v0, 0x65

    goto/16 :goto_0

    :sswitch_6d
    const/16 v0, 0x6f

    goto/16 :goto_0

    :sswitch_6e
    const/16 v0, 0x75

    goto/16 :goto_0

    :sswitch_6f
    const/16 v0, 0x4f

    goto/16 :goto_0

    :sswitch_70
    const/16 v0, 0x6f

    goto/16 :goto_0

    :sswitch_71
    const/16 v0, 0x55

    goto/16 :goto_0

    :sswitch_72
    const/16 v0, 0x75

    goto/16 :goto_0

    :cond_2
    const v0, 0xfeff

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xc0 -> :sswitch_5
        0xc1 -> :sswitch_6
        0xc2 -> :sswitch_7
        0xc3 -> :sswitch_8
        0xc8 -> :sswitch_17
        0xca -> :sswitch_18
        0xcb -> :sswitch_19
        0xcc -> :sswitch_24
        0xcd -> :sswitch_25
        0xce -> :sswitch_26
        0xcf -> :sswitch_27
        0xd2 -> :sswitch_39
        0xd3 -> :sswitch_3a
        0xd4 -> :sswitch_3b
        0xd5 -> :sswitch_3c
        0xd9 -> :sswitch_4f
        0xda -> :sswitch_50
        0xdb -> :sswitch_51
        0xdd -> :sswitch_56
        0xe1 -> :sswitch_0
        0xe2 -> :sswitch_1
        0xe3 -> :sswitch_2
        0xe7 -> :sswitch_d
        0xe9 -> :sswitch_6c
        0xea -> :sswitch_12
        0xeb -> :sswitch_13
        0xed -> :sswitch_1f
        0xee -> :sswitch_20
        0xef -> :sswitch_21
        0xf3 -> :sswitch_34
        0xf4 -> :sswitch_35
        0xf5 -> :sswitch_36
        0xf6 -> :sswitch_6d
        0xfa -> :sswitch_4b
        0xfb -> :sswitch_4c
        0xfc -> :sswitch_6e
        0xfd -> :sswitch_54
        0xff -> :sswitch_55
        0x100 -> :sswitch_9
        0x101 -> :sswitch_4
        0x104 -> :sswitch_a
        0x105 -> :sswitch_3
        0x106 -> :sswitch_e
        0x107 -> :sswitch_b
        0x10c -> :sswitch_f
        0x10d -> :sswitch_c
        0x10e -> :sswitch_11
        0x10f -> :sswitch_10
        0x112 -> :sswitch_1c
        0x113 -> :sswitch_16
        0x118 -> :sswitch_1a
        0x119 -> :sswitch_14
        0x11a -> :sswitch_1b
        0x11b -> :sswitch_15
        0x11e -> :sswitch_1e
        0x11f -> :sswitch_1d
        0x12a -> :sswitch_29
        0x12b -> :sswitch_23
        0x130 -> :sswitch_28
        0x131 -> :sswitch_22
        0x139 -> :sswitch_2d
        0x13a -> :sswitch_2a
        0x13d -> :sswitch_2e
        0x13e -> :sswitch_2b
        0x141 -> :sswitch_2f
        0x142 -> :sswitch_2c
        0x143 -> :sswitch_32
        0x144 -> :sswitch_30
        0x147 -> :sswitch_33
        0x148 -> :sswitch_31
        0x14c -> :sswitch_3d
        0x14d -> :sswitch_37
        0x150 -> :sswitch_6f
        0x151 -> :sswitch_70
        0x152 -> :sswitch_3e
        0x153 -> :sswitch_38
        0x154 -> :sswitch_41
        0x155 -> :sswitch_3f
        0x158 -> :sswitch_42
        0x159 -> :sswitch_40
        0x15a -> :sswitch_46
        0x15b -> :sswitch_43
        0x15e -> :sswitch_48
        0x15f -> :sswitch_45
        0x160 -> :sswitch_47
        0x161 -> :sswitch_44
        0x164 -> :sswitch_4a
        0x165 -> :sswitch_49
        0x16a -> :sswitch_53
        0x16b -> :sswitch_4e
        0x16e -> :sswitch_52
        0x16f -> :sswitch_4d
        0x170 -> :sswitch_71
        0x171 -> :sswitch_72
        0x178 -> :sswitch_57
        0x179 -> :sswitch_5b
        0x17a -> :sswitch_58
        0x17b -> :sswitch_5d
        0x17c -> :sswitch_5a
        0x17d -> :sswitch_5c
        0x17e -> :sswitch_59
        0x391 -> :sswitch_64
        0x392 -> :sswitch_69
        0x395 -> :sswitch_5e
        0x396 -> :sswitch_67
        0x397 -> :sswitch_65
        0x399 -> :sswitch_62
        0x39a -> :sswitch_66
        0x39c -> :sswitch_6b
        0x39d -> :sswitch_6a
        0x39f -> :sswitch_63
        0x3a1 -> :sswitch_5f
        0x3a4 -> :sswitch_60
        0x3a5 -> :sswitch_61
        0x3a7 -> :sswitch_68
    .end sparse-switch
.end method

.method public static countGsmSeptets(C)I
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    return v2
.end method

.method public static countGsmSeptets(CZ)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_0

    return v3

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    if-eqz p1, :cond_2

    new-instance v0, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v0

    :cond_2
    return v3
.end method

.method public static countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 27

    sget-boolean v23, Lcom/android/internal/telephony/GsmAlphabet;->sDisableCountryEncodingCheck:Z

    if-nez v23, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->enableCountrySpecificEncodings()V

    :cond_0
    sget-object v23, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    sget-object v24, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    add-int v23, v23, v24

    if-nez v23, :cond_3

    new-instance v20, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v12

    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v12, v0, :cond_1

    const/16 v23, 0x0

    return-object v23

    :cond_1
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move-object/from16 v0, v20

    iput v12, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    const/16 v23, 0xa0

    move/from16 v0, v23

    if-le v12, v0, :cond_2

    add-int/lit16 v0, v12, 0x98

    move/from16 v23, v0

    move/from16 v0, v23

    div-int/lit16 v0, v0, 0x99

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    move/from16 v23, v0

    move/from16 v0, v23

    mul-int/lit16 v0, v0, 0x99

    move/from16 v23, v0

    sub-int v23, v23, v12

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    :goto_0
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    return-object v20

    :cond_2
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    rsub-int v0, v12, 0xa0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_0

    :cond_3
    sget v9, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    new-instance v8, Ljava/util/ArrayList;

    sget-object v23, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v23, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    const/16 v24, 0x0

    invoke-direct/range {v23 .. v24}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v24, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    const/16 v23, 0x0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    :goto_1
    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_5

    aget v5, v24, v23

    if-eqz v5, :cond_4

    sget-object v26, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v26, v26, v5

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    xor-int/lit8 v26, v26, 0x1

    if-eqz v26, :cond_4

    new-instance v26, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    move-object/from16 v0, v26

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    :cond_5
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v17

    const/4 v5, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v5, v0, :cond_e

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v23

    xor-int/lit8 v23, v23, 0x1

    if-eqz v23, :cond_e

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v23, 0x1b

    move/from16 v0, v23

    if-ne v4, v0, :cond_7

    const-string/jumbo v23, "GSM"

    const-string/jumbo v24, "countGsmSeptets() string contains Escape character, ignoring!"

    invoke-static/range {v23 .. v24}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    sget-object v23, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    iget v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v24, v0

    aget-object v23, v23, v24

    const/16 v24, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v19

    const/16 v23, -0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    const/16 v18, 0x0

    :goto_3
    move/from16 v0, v18

    if-gt v0, v9, :cond_8

    iget-object v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v23, v0

    aget v23, v23, v18

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_9

    sget-object v23, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v23, v23, v18

    const/16 v24, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v16

    const/16 v23, -0x1

    move/from16 v0, v16

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    if-eqz p1, :cond_a

    iget-object v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v23, v0

    aget v24, v23, v18

    add-int/lit8 v24, v24, 0x1

    aput v24, v23, v18

    iget-object v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    move-object/from16 v23, v0

    aget v24, v23, v18

    add-int/lit8 v24, v24, 0x1

    aput v24, v23, v18

    :cond_9
    :goto_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    :cond_a
    iget-object v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v23, v0

    const/16 v24, -0x1

    aput v24, v23, v18

    goto :goto_4

    :cond_b
    iget-object v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v23, v0

    aget v24, v23, v18

    add-int/lit8 v24, v24, 0x2

    aput v24, v23, v18

    goto :goto_4

    :cond_c
    const/16 v18, 0x0

    :goto_5
    move/from16 v0, v18

    if-gt v0, v9, :cond_8

    iget-object v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v23, v0

    aget v23, v23, v18

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_d

    iget-object v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v23, v0

    aget v24, v23, v18

    add-int/lit8 v24, v24, 0x1

    aput v24, v23, v18

    :cond_d
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    :cond_e
    new-instance v20, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    const v23, 0x7fffffff

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const v10, 0x7fffffff

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    const/4 v15, 0x0

    :goto_6
    if-gt v15, v9, :cond_f

    iget-object v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v23, v0

    aget v12, v23, v15

    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v12, v0, :cond_11

    :cond_10
    :goto_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_11
    iget v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v23, v0

    if-eqz v23, :cond_15

    if-eqz v15, :cond_15

    const/16 v21, 0x8

    :goto_8
    add-int v23, v12, v21

    const/16 v24, 0xa0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_18

    if-nez v21, :cond_12

    const/16 v21, 0x1

    :cond_12
    add-int/lit8 v21, v21, 0x6

    move/from16 v0, v21

    rsub-int v13, v0, 0xa0

    add-int v23, v12, v13

    add-int/lit8 v23, v23, -0x1

    div-int v11, v23, v13

    mul-int v23, v11, v13

    sub-int v14, v23, v12

    :goto_9
    iget-object v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    move-object/from16 v23, v0

    aget v22, v23, v15

    if-eqz p1, :cond_13

    move/from16 v0, v22

    if-gt v0, v10, :cond_10

    :cond_13
    if-eqz p1, :cond_19

    move/from16 v0, v22

    if-ge v0, v10, :cond_19

    :cond_14
    :goto_a
    move/from16 v10, v22

    move-object/from16 v0, v20

    iput v11, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    move-object/from16 v0, v20

    iput v12, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    move-object/from16 v0, v20

    iput v14, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    iget v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    move-object/from16 v0, v20

    iput v15, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    goto :goto_7

    :cond_15
    iget v0, v6, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v23, v0

    if-nez v23, :cond_16

    if-eqz v15, :cond_17

    :cond_16
    const/16 v21, 0x5

    goto :goto_8

    :cond_17
    const/16 v21, 0x0

    goto :goto_8

    :cond_18
    const/4 v11, 0x1

    move/from16 v0, v21

    rsub-int v0, v0, 0xa0

    move/from16 v23, v0

    sub-int v14, v23, v12

    goto :goto_9

    :cond_19
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v11, v0, :cond_14

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v11, v0, :cond_10

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-le v14, v0, :cond_10

    goto :goto_a

    :cond_1a
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    move/from16 v23, v0

    const v24, 0x7fffffff

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1b

    const/16 v23, 0x0

    return-object v23

    :cond_1b
    return-object v20
.end method

.method public static countGsmSeptets(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 2

    sput-boolean p2, Lcom/android/internal/telephony/GsmAlphabet;->sEnableIgnoreSpecialChar:Z

    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnableIgnoreSpecialChar:Z

    return-object v0
.end method

.method public static countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I
    .locals 9

    const/4 v8, -0x1

    const/4 v3, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v6, p2

    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v2, v6, p3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_7

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v6, 0x1b

    if-ne v0, v6, :cond_1

    const-string/jumbo v6, "GSM"

    const-string/jumbo v7, "countGsmSeptets() string contains Escape character, skipping."

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    if-eq v6, v8, :cond_3

    add-int/lit8 v3, v3, 0x1

    :goto_1
    sget-boolean v6, Lcom/android/internal/telephony/GsmAlphabet;->sEnableIgnoreSpecialChar:Z

    if-eqz v6, :cond_0

    const/16 v6, 0xa5

    if-eq v0, v6, :cond_2

    const/16 v6, 0xa3

    if-ne v0, v6, :cond_6

    :cond_2
    :goto_2
    return v8

    :cond_3
    invoke-virtual {v2, v0, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    if-eq v6, v8, :cond_4

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return v8

    :cond_6
    const/16 v6, 0x20ac

    if-ne v0, v6, :cond_0

    goto :goto_2

    :cond_7
    return v3
.end method

.method private static enableCountrySpecificEncodings()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    const v1, 0x107006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    array-length v1, v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    sput v1, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    :goto_0
    return-void

    :cond_0
    sput v2, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    goto :goto_0
.end method

.method public static findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I
    .locals 8

    const/4 v7, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v2, v6, p3

    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v1, v6, p4

    move v4, p1

    :goto_0
    if-ge v4, v5, :cond_3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v2, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-ne v3, v7, :cond_1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-ne v3, v7, :cond_0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    if-le v0, p2, :cond_2

    return v4

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v5
.end method

.method public static declared-synchronized getEnabledLockingShiftTables()[I
    .locals 2

    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getEnabledSingleShiftTables()[I
    .locals 2

    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static gsm7BitPackedToString([BII)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsm7BitPackedToString([BIII)Ljava/lang/String;
    .locals 11

    const/16 v10, 0x7f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p2, :cond_3

    mul-int/lit8 v8, v4, 0x7

    add-int v0, v8, p3

    :try_start_0
    div-int/lit8 v1, v0, 0x8

    rem-int/lit8 v7, v0, 0x8

    add-int v8, p1, v1

    aget-byte v8, p0, v8

    shr-int/2addr v8, v7

    and-int/lit8 v3, v8, 0x7f

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    add-int/lit8 v8, v7, -0x1

    shr-int v8, v10, v8

    and-int/2addr v3, v8

    add-int v8, p1, v1

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, p0, v8

    rsub-int/lit8 v9, v7, 0x8

    shl-int/2addr v8, v9

    and-int/lit8 v8, v8, 0x7f

    or-int/2addr v3, v8

    :cond_0
    if-eqz v5, :cond_1

    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/16 v8, 0x1b

    if-ne v3, v8, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v8, "GSM"

    const-string/jumbo v9, "Error GSM 7 bit packed: "

    invoke-static {v8, v9, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v8, 0x0

    return-object v8

    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static gsm7BitPackedToString([BIIIII)Ljava/lang/String;
    .locals 15

    new-instance v9, Ljava/lang/StringBuilder;

    move/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    if-ltz p4, :cond_0

    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    array-length v12, v12

    move/from16 v0, p4

    if-le v0, v12, :cond_1

    :cond_0
    const-string/jumbo v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "unknown language table "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", using default"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p4, 0x0

    :cond_1
    if-ltz p5, :cond_2

    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    array-length v12, v12

    move/from16 v0, p5

    if-le v0, v12, :cond_3

    :cond_2
    const-string/jumbo v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "unknown single shift table "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", using default"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p5, 0x0

    :cond_3
    const/4 v8, 0x0

    :try_start_0
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v7, v12, p4

    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v11, v12, p5

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    const-string/jumbo v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "no language table for code "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", using default"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v7, v12, v13

    :cond_4
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    const-string/jumbo v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "no single shift table for code "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", using default"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v11, v12, v13

    :cond_5
    const/4 v6, 0x0

    :goto_0
    move/from16 v0, p2

    if-ge v6, v0, :cond_b

    mul-int/lit8 v12, v6, 0x7

    add-int v1, v12, p3

    div-int/lit8 v2, v1, 0x8

    rem-int/lit8 v10, v1, 0x8

    add-int v12, p1, v2

    aget-byte v12, p0, v12

    shr-int/2addr v12, v10

    and-int/lit8 v5, v12, 0x7f

    const/4 v12, 0x1

    if-le v10, v12, :cond_6

    add-int/lit8 v12, v10, -0x1

    const/16 v13, 0x7f

    shr-int v12, v13, v12

    and-int/2addr v5, v12

    add-int v12, p1, v2

    add-int/lit8 v12, v12, 0x1

    aget-byte v12, p0, v12

    rsub-int/lit8 v13, v10, 0x8

    shl-int/2addr v12, v13

    and-int/lit8 v12, v12, 0x7f

    or-int/2addr v5, v12

    :cond_6
    if-eqz v8, :cond_9

    const/16 v12, 0x1b

    if-ne v5, v12, :cond_7

    const/16 v12, 0x20

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v8, 0x0

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v12, 0x20

    if-ne v3, v12, :cond_8

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string/jumbo v12, "GSM"

    const-string/jumbo v13, "Error GSM 7 bit packed: "

    invoke-static {v12, v13, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v12, 0x0

    return-object v12

    :cond_8
    :try_start_1
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_9
    const/16 v12, 0x1b

    if-ne v5, v12, :cond_a

    const/4 v8, 0x1

    goto :goto_2

    :cond_a
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12
.end method

.method public static gsm8BitUnpackedToString([BII)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;
    .locals 14

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string/jumbo v12, "us-ascii"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_0

    invoke-static/range {p3 .. p3}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v5, 0x1

    invoke-static/range {p3 .. p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    :cond_0
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v6, v12, v13

    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v11, v12, v13

    new-instance v9, Ljava/lang/StringBuilder;

    move/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v8, 0x0

    move v3, p1

    move v4, v3

    :goto_0
    add-int v12, p1, p2

    if-ge v4, v12, :cond_1

    aget-byte v12, p0, v4

    and-int/lit16 v1, v12, 0xff

    const/16 v12, 0xff

    if-ne v1, v12, :cond_2

    :cond_1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12

    :cond_2
    const/16 v12, 0x1b

    if-ne v1, v12, :cond_4

    if-eqz v8, :cond_3

    const/16 v12, 0x20

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    move v3, v4

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v4, v3

    goto :goto_0

    :cond_3
    const/4 v8, 0x1

    move v3, v4

    goto :goto_1

    :cond_4
    if-eqz v8, :cond_8

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v1, v12, :cond_5

    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    :goto_2
    const/16 v12, 0x20

    if-ne v10, v12, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v1, v12, :cond_6

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v4

    :goto_3
    const/4 v8, 0x0

    goto :goto_1

    :cond_5
    const/16 v10, 0x20

    goto :goto_2

    :cond_6
    const/16 v12, 0x20

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v4

    goto :goto_3

    :cond_7
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v4

    goto :goto_3

    :cond_8
    if-eqz v5, :cond_9

    const/16 v12, 0x80

    if-ge v1, v12, :cond_a

    :cond_9
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v1, v12, :cond_b

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    move v3, v4

    goto :goto_3

    :cond_a
    add-int/lit8 v12, v4, 0x1

    add-int v13, p1, p2

    if-ge v12, v13, :cond_9

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    add-int/lit8 v3, v4, 0x1

    const/4 v12, 0x2

    invoke-virtual {v7, p0, v4, v12}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2, v7}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_b
    const/16 v12, 0x20

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method public static gsmExtendedToChar(I)C
    .locals 4

    const/16 v3, 0x20

    const/4 v2, 0x0

    const/16 v1, 0x1b

    if-ne p0, v1, :cond_0

    return v3

    :cond_0
    if-ltz p0, :cond_2

    const/16 v1, 0x80

    if-ge p0, v1, :cond_2

    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_1

    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    return v1

    :cond_1
    return v0

    :cond_2
    return v3
.end method

.method public static gsmToChar(I)C
    .locals 2

    const/4 v1, 0x0

    if-ltz p0, :cond_0

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x20

    return v0
.end method

.method public static isGsmSeptets(C)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_0

    return v3

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_1

    return v3

    :cond_1
    return v2
.end method

.method private static packSmsChar([BII)V
    .locals 4

    div-int/lit8 v0, p1, 0x8

    rem-int/lit8 v1, p1, 0x8

    add-int/lit8 v0, v0, 0x1

    aget-byte v2, p0, v0

    shl-int v3, p2, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    rsub-int/lit8 v2, v1, 0x8

    shr-int v2, p2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    :cond_0
    return-void
.end method

.method public static declared-synchronized setEnabledLockingShiftTables([I)V
    .locals 2

    const-class v1, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/GsmAlphabet;->sDisableCountryEncodingCheck:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setEnabledSingleShiftTables([I)V
    .locals 2

    const-class v1, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/GsmAlphabet;->sDisableCountryEncodingCheck:Z

    array-length v0, p0

    if-lez v0, :cond_0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget v0, p0, v0

    sput v0, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    sput v0, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {p0, v1, v0, v1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;II)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;IZII)[B
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    xor-int/lit8 v13, p2, 0x1

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {p0, v13, v0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v10

    const/4 v13, -0x1

    if-ne v10, v13, :cond_0

    new-instance v13, Lcom/android/internal/telephony/EncodeException;

    const-string/jumbo v14, "countGsmSeptetsUsingTables(): unencodable char"

    invoke-direct {v13, v14}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_0
    add-int v10, v10, p1

    const/16 v13, 0xff

    if-le v10, v13, :cond_1

    new-instance v13, Lcom/android/internal/telephony/EncodeException;

    const-string/jumbo v14, "Payload cannot exceed 255 septets"

    invoke-direct {v13, v14}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_1
    mul-int/lit8 v13, v10, 0x7

    add-int/lit8 v13, v13, 0x7

    div-int/lit8 v3, v13, 0x8

    add-int/lit8 v13, v3, 0x1

    new-array v9, v13, [B

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v5, v13, p3

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v6, v13, p4

    const/4 v8, 0x0

    move/from16 v11, p1

    mul-int/lit8 v2, p1, 0x7

    :goto_0
    if-ge v8, v7, :cond_5

    if-ge v11, v10, :cond_5

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v13, -0x1

    invoke-virtual {v5, v4, v13}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_3

    const/4 v13, -0x1

    invoke-virtual {v6, v4, v13}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_4

    if-eqz p2, :cond_2

    new-instance v13, Lcom/android/internal/telephony/EncodeException;

    const-string/jumbo v14, "stringToGsm7BitPacked(): unencodable char"

    invoke-direct {v13, v14}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_2
    const/16 v13, 0x20

    const/16 v14, 0x20

    invoke-virtual {v5, v13, v14}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    :cond_3
    :goto_1
    invoke-static {v9, v2, v12}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_4
    const/16 v13, 0x1b

    invoke-static {v9, v2, v13}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    add-int/lit8 v2, v2, 0x7

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_5
    int-to-byte v13, v10

    const/4 v14, 0x0

    aput-byte v13, v9, v14

    return-object v9
.end method

.method public static stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    :cond_0
    invoke-static {p0, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;II)[B

    move-result-object v3

    return-object v3

    :cond_1
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v0, v3, 0x8

    add-int/lit8 v3, v0, 0x6

    div-int/lit8 v1, v3, 0x7

    invoke-static {p0, v1, v4, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v2

    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    array-length v3, p1

    const/4 v4, 0x2

    invoke-static {p1, v5, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v2
.end method

.method public static stringToGsm8BitPacked(Ljava/lang/String;)[B
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v2, v3, v3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v1

    new-array v0, v1, [B

    array-length v2, v0

    invoke-static {p0, v0, v3, v2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V

    return-object v0
.end method

.method public static stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V
    .locals 12

    const/16 v11, 0x20

    const/4 v10, 0x0

    const/4 v9, -0x1

    move v4, p2

    sget-object v8, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v8, v10

    sget-object v8, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v2, v8, v10

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    move v5, v4

    :goto_0
    if-ge v3, v6, :cond_1

    sub-int v8, v5, p2

    if-ge v8, p3, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-ne v7, v9, :cond_4

    invoke-virtual {v2, v0, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-ne v7, v9, :cond_0

    invoke-virtual {v1, v11, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    move v4, v5

    :goto_1
    add-int/lit8 v5, v4, 0x1

    int-to-byte v8, v7

    aput-byte v8, p1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v8, v5, 0x1

    sub-int/2addr v8, p2

    if-lt v8, p3, :cond_2

    :cond_1
    :goto_2
    sub-int v8, v5, p2

    if-ge v8, p3, :cond_3

    add-int/lit8 v4, v5, 0x1

    aput-byte v9, p1, v5

    move v5, v4

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v5, 0x1

    const/16 v8, 0x1b

    aput-byte v8, p1, v5

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    move v4, v5

    goto :goto_1
.end method
