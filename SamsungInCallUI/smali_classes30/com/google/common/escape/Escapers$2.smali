.class final Lcom/google/common/escape/Escapers$2;
.super Lcom/google/common/escape/UnicodeEscaper;
.source "Escapers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/escape/Escapers;->wrap(Lcom/google/common/escape/CharEscaper;)Lcom/google/common/escape/UnicodeEscaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$escaper:Lcom/google/common/escape/CharEscaper;


# direct methods
.method constructor <init>(Lcom/google/common/escape/CharEscaper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/escape/Escapers$2;->val$escaper:Lcom/google/common/escape/CharEscaper;

    invoke-direct {p0}, Lcom/google/common/escape/UnicodeEscaper;-><init>()V

    return-void
.end method


# virtual methods
.method protected escape(I)[C
    .locals 11

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/high16 v8, 0x10000

    if-ge p1, v8, :cond_1

    iget-object v7, p0, Lcom/google/common/escape/Escapers$2;->val$escaper:Lcom/google/common/escape/CharEscaper;

    int-to-char v8, p1

    invoke-virtual {v7, v8}, Lcom/google/common/escape/CharEscaper;->escape(C)[C

    move-result-object v5

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    const/4 v8, 0x2

    new-array v6, v8, [C

    invoke-static {p1, v6, v10}, Ljava/lang/Character;->toChars(I[CI)I

    iget-object v8, p0, Lcom/google/common/escape/Escapers$2;->val$escaper:Lcom/google/common/escape/CharEscaper;

    aget-char v9, v6, v10

    invoke-virtual {v8, v9}, Lcom/google/common/escape/CharEscaper;->escape(C)[C

    move-result-object v0

    iget-object v8, p0, Lcom/google/common/escape/Escapers$2;->val$escaper:Lcom/google/common/escape/CharEscaper;

    aget-char v9, v6, v7

    invoke-virtual {v8, v9}, Lcom/google/common/escape/CharEscaper;->escape(C)[C

    move-result-object v2

    if-nez v0, :cond_2

    if-nez v2, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    array-length v1, v0

    :goto_1
    if-eqz v2, :cond_4

    array-length v3, v2

    :goto_2
    add-int v8, v1, v3

    new-array v5, v8, [C

    if-eqz v0, :cond_5

    const/4 v4, 0x0

    :goto_3
    array-length v8, v0

    if-ge v4, v8, :cond_6

    aget-char v8, v0, v4

    aput-char v8, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    move v1, v7

    goto :goto_1

    :cond_4
    move v3, v7

    goto :goto_2

    :cond_5
    aget-char v8, v6, v10

    aput-char v8, v5, v10

    :cond_6
    if-eqz v2, :cond_7

    const/4 v4, 0x0

    :goto_4
    array-length v7, v2

    if-ge v4, v7, :cond_0

    add-int v7, v1, v4

    aget-char v8, v2, v4

    aput-char v8, v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    aget-char v7, v6, v7

    aput-char v7, v5, v1

    goto :goto_0
.end method
