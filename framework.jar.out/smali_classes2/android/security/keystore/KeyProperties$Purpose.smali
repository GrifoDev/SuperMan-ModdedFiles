.class public abstract Landroid/security/keystore/KeyProperties$Purpose;
.super Ljava/lang/Object;
.source "KeyProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Purpose"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allFromKeymaster(Ljava/util/Collection;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "purposes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 118
    .local v2, "result":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "keymasterPurpose$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 119
    .local v0, "keymasterPurpose":I
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Purpose;->fromKeymaster(I)I

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0

    .line 121
    .end local v0    # "keymasterPurpose":I
    :cond_0
    return v2
.end method

.method public static allToKeymaster(I)[I
    .locals 3
    .param p0, "purposes"    # I

    .prologue
    .line 109
    invoke-static {p0}, Landroid/security/keystore/KeyProperties;->-wrap0(I)[I

    move-result-object v1

    .line 110
    .local v1, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 111
    aget v2, v1, v0

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Purpose;->toKeymaster(I)I

    move-result v2

    aput v2, v1, v0

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return-object v1
.end method

.method public static fromKeymaster(I)I
    .locals 3
    .param p0, "purpose"    # I

    .prologue
    .line 93
    packed-switch p0, :pswitch_data_0

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown purpose: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 97
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 99
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 101
    :pswitch_3
    const/16 v0, 0x8

    return v0

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static toKeymaster(I)I
    .locals 3
    .param p0, "purpose"    # I

    .prologue
    .line 78
    packed-switch p0, :pswitch_data_0

    .line 88
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown purpose: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 82
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 84
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 86
    :pswitch_4
    const/4 v0, 0x3

    return v0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
