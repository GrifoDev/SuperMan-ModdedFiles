.class public Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;
.super Ljava/lang/Object;
.source "SearchAppKeypadNumberUtils.java"


# static fields
.field private static final LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0x38

    const/16 v6, 0x36

    const/16 v5, 0x34

    const/16 v4, 0x33

    const/16 v3, 0x32

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x30

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x31

    const/16 v2, 0x31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x61

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x62

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x63

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xe0

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xe1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xe2

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xe3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xe4

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xe5

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xe6

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x101

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x103

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x105

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xe7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x107

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x10d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x18b

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x18c

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xe8

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xe9

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xea

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xea

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xeb

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x113

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x115

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x119

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x1dd

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v5, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x69

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x121

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x1e7

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xec

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xed

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xee

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xef

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x129

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x12f

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x131

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x35

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6a

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x137

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x13c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x142

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v6, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xf1

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x144

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x146

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xf2

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xf3

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xf4

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xf5

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xf6

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xf8

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x37

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x70

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x71

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x72

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x73

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x155

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x159

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x160

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x161

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v7, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x74

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x75

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x76

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x163

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x165

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xf9

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xfa

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xfb

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xfc

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x16b

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x16f

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x173

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x39

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x77

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x78

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x79

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x7a

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xfd

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xff

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x17a

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x17c

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x17e

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x2a

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x23

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x20

    const/16 v2, 0x5e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertTraditionalChineseKeypadLettersToDigits(C)C
    .locals 3

    const/16 v0, 0x2a

    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->LATIN_EXTENDED_KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    int-to-char p0, v1

    :cond_0
    sparse-switch p0, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const/16 v0, 0x401

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x402

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x403

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x404

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x405

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x406

    goto :goto_0

    :sswitch_6
    const/16 v0, 0x407

    goto :goto_0

    :sswitch_7
    const/16 v0, 0x408

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x409

    goto :goto_0

    :sswitch_9
    const/16 v0, 0x42d

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_9
        0x31 -> :sswitch_0
        0x32 -> :sswitch_1
        0x33 -> :sswitch_2
        0x34 -> :sswitch_3
        0x35 -> :sswitch_4
        0x36 -> :sswitch_5
        0x37 -> :sswitch_6
        0x38 -> :sswitch_7
        0x39 -> :sswitch_8
        0x3105 -> :sswitch_0
        0x3106 -> :sswitch_0
        0x3107 -> :sswitch_0
        0x3108 -> :sswitch_0
        0x3109 -> :sswitch_1
        0x310a -> :sswitch_1
        0x310b -> :sswitch_1
        0x310c -> :sswitch_1
        0x310d -> :sswitch_2
        0x310e -> :sswitch_2
        0x310f -> :sswitch_2
        0x3110 -> :sswitch_3
        0x3111 -> :sswitch_3
        0x3112 -> :sswitch_3
        0x3113 -> :sswitch_4
        0x3114 -> :sswitch_4
        0x3115 -> :sswitch_4
        0x3116 -> :sswitch_4
        0x3117 -> :sswitch_5
        0x3118 -> :sswitch_5
        0x3119 -> :sswitch_5
        0x311a -> :sswitch_6
        0x311b -> :sswitch_6
        0x311c -> :sswitch_6
        0x311d -> :sswitch_6
        0x311e -> :sswitch_7
        0x311f -> :sswitch_7
        0x3120 -> :sswitch_7
        0x3121 -> :sswitch_7
        0x3122 -> :sswitch_8
        0x3123 -> :sswitch_8
        0x3124 -> :sswitch_8
        0x3125 -> :sswitch_8
        0x3126 -> :sswitch_8
        0x3127 -> :sswitch_9
        0x3128 -> :sswitch_9
        0x3129 -> :sswitch_9
        0x4e00 -> :sswitch_0
        0x4e28 -> :sswitch_1
        0x4e36 -> :sswitch_3
        0x4e3f -> :sswitch_2
        0x4e5b -> :sswitch_4
    .end sparse-switch
.end method

.method private static isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_1_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_B:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_ADDITIONAL:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeActionCodeHKTW(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/android/launcher2/searchapp/SearchAppKeypadNumberUtils;->convertTraditionalChineseKeypadLettersToDigits(C)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
