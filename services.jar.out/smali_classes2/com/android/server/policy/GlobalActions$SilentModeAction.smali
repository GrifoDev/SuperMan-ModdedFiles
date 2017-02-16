.class Lcom/android/server/policy/GlobalActions$SilentModeAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/GlobalActions$Action;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SilentModeAction"
.end annotation


# instance fields
.field private final ITEM_IDS:[I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;Landroid/os/Handler;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x10203db

    const v1, 0x10203dc

    const v2, 0x10203dd

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$SilentModeAction;->ITEM_IDS:[I

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$SilentModeAction;->mAudioManager:Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/android/server/policy/GlobalActions$SilentModeAction;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private indexToRingerMode(I)I
    .locals 0

    return p1
.end method

.method private ringerModeToIndex(I)I
    .locals 0

    return p1
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 9

    const/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    const v5, 0x109006e

    invoke-virtual {p4, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$SilentModeAction;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$SilentModeAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/policy/GlobalActions$SilentModeAction;->ringerModeToIndex(I)I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v0, v5, :cond_4

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$SilentModeAction;->ITEM_IDS:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-ne v2, v0, :cond_3

    move v5, v6

    :goto_1
    invoke-virtual {v1, v5}, Landroid/view/View;->setActivated(Z)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-ne v0, v6, :cond_0

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get27()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x1020507

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz v0, :cond_1

    if-ne v0, v6, :cond_2

    :cond_1
    invoke-virtual {v1, v7}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v5, v7

    goto :goto_1

    :cond_4
    return-object v4
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string/jumbo v0, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onClick() of Silentmode button = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " & dismissing dialog"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "isSettingsChangesAllowed"

    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy3"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$SilentModeAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v2, "restricted by MDM "

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$SilentModeAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0, v7}, Lcom/android/server/policy/GlobalActions$SilentModeAction;->indexToRingerMode(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$SilentModeAction;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x12c

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onPress()V
    .locals 0

    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showConditional()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateRingerMode()V
    .locals 5

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$SilentModeAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/policy/GlobalActions$SilentModeAction;->ringerModeToIndex(I)I

    move-result v2

    sget-object v3, Lcom/android/server/policy/GlobalActions;->mSilentModeView:Landroid/view/View;

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_2

    sget-object v3, Lcom/android/server/policy/GlobalActions;->mSilentModeView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$SilentModeAction;->ITEM_IDS:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-ne v2, v0, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setActivated(Z)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    return-void
.end method

.method willCreate()V
    .locals 0

    return-void
.end method
