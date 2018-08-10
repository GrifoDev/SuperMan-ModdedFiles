.class public Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;
.super Ljava/lang/Object;
.source "DozeParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/DozeParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntInOutMatcher"
.end annotation


# instance fields
.field private final mDefaultIsIn:Z

.field private final mIsIn:Landroid/util/SparseBooleanArray;

.field final mSpec:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 12

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Spec must not be empty"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;->mSpec:Ljava/lang/String;

    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;->mIsIn:Landroid/util/SparseBooleanArray;

    const-string/jumbo v6, ","

    const/4 v8, -0x1

    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v6, v7

    :goto_0
    if-ge v6, v9, :cond_8

    aget-object v4, v8, v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Illegal spec, must not have zero-length items: `"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "`"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x21

    if-eq v10, v11, :cond_2

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    move-object v3, v4

    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_4

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Illegal spec, must not have zero-length items: `"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "`"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    const-string/jumbo v10, "*"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    if-eqz v1, :cond_5

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Illegal spec, `*` must not appear multiple times in `"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "`"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5
    move v0, v2

    const/4 v1, 0x1

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;->mIsIn:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v5}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v10

    if-ltz v10, :cond_7

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Illegal spec, `"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "` must not appear multiple times in `"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "`"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_7
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;->mIsIn:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v5, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_3

    :cond_8
    if-nez v1, :cond_9

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Illegal spec, must specify either * or !*"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_9
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;->mDefaultIsIn:Z

    return-void
.end method


# virtual methods
.method public isIn(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;->mIsIn:Landroid/util/SparseBooleanArray;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;->mDefaultIsIn:Z

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method
