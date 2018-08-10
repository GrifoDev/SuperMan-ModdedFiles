.class public Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;
.super Ljava/lang/Object;
.source "LockscreenFragment.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ExtensionController$TunerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/LockscreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LockButtonFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/ExtensionController$TunerFactory",
        "<",
        "Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;->mKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public create(Ljava/util/Map;)Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;->mKey:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "::"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/systemui/tuner/LockscreenFragment;->getShortcutInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/tuner/ShortcutParser$Shortcut;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Lcom/android/systemui/tuner/LockscreenFragment$ShortcutButton;

    iget-object v4, p0, Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lcom/android/systemui/tuner/LockscreenFragment$ShortcutButton;-><init>(Landroid/content/Context;Lcom/android/systemui/tuner/ShortcutParser$Shortcut;)V

    return-object v3

    :cond_0
    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/systemui/tuner/LockscreenFragment;->getActivityinfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v3, Lcom/android/systemui/tuner/LockscreenFragment$ActivityButton;

    iget-object v4, p0, Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Lcom/android/systemui/tuner/LockscreenFragment$ActivityButton;-><init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    return-object v3

    :cond_1
    return-object v4
.end method

.method public bridge synthetic create(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;->create(Ljava/util/Map;)Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    move-result-object v0

    return-object v0
.end method

.method public keys()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;->mKey:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method
