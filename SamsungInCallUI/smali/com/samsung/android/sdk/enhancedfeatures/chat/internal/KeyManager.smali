.class public Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeyManager;
.super Ljava/lang/Object;


# static fields
.field private static mKeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/ssf/message/io/KeySet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeyManager;->mKeyMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKeyMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/ssf/message/io/KeySet;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeyManager;->mKeyMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getKeySet(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/KeySet;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeyManager;->mKeyMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/KeySet;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeyManager;->mKeyMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/KeySet;

    goto :goto_0
.end method

.method public static putKeySet(Ljava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/KeySet;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "temp"

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeyManager;->mKeyMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static removeKey()V
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeyManager;->mKeyMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
