.class public Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;
.super Ljava/lang/Object;
.source "ServiceBoxRemoteViewsItem.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public bigRemoteViews:Landroid/widget/RemoteViews;

.field public expandRemoteViews:Landroid/widget/RemoteViews;

.field public isShow:Z

.field public isValidData:Z

.field public packageName:Ljava/lang/String;

.field public smallRemoteViews:Landroid/widget/RemoteViews;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 9

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v6, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isValidData:Z

    const-string/jumbo v5, "package"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "show"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v5, "small"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    const-string/jumbo v5, "expand"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    const-string/jumbo v5, "big"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    sget-object v5, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "package name is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v8, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isValidData:Z

    return-void

    :cond_1
    if-eqz v2, :cond_2

    if-nez v4, :cond_2

    sget-object v5, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "smallRemoteView is null ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v8, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isValidData:Z

    return-void

    :cond_2
    if-eqz v4, :cond_3

    instance-of v5, v4, Landroid/widget/RemoteViews;

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "small is not RemoteViews ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v8, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isValidData:Z

    return-void

    :cond_3
    if-eqz v1, :cond_4

    instance-of v5, v1, Landroid/widget/RemoteViews;

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "expand is not RemoteViews ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v8, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isValidData:Z

    return-void

    :cond_4
    if-eqz v0, :cond_5

    instance-of v5, v0, Landroid/widget/RemoteViews;

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "but big is not RemoteViews ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v8, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isValidData:Z

    return-void

    :cond_5
    iput-object v3, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isShow:Z

    check-cast v4, Landroid/widget/RemoteViews;

    iput-object v4, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->smallRemoteViews:Landroid/widget/RemoteViews;

    check-cast v1, Landroid/widget/RemoteViews;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->expandRemoteViews:Landroid/widget/RemoteViews;

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->bigRemoteViews:Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->expandRemoteViews:Landroid/widget/RemoteViews;

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->smallRemoteViews:Landroid/widget/RemoteViews;

    iput-object v5, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->expandRemoteViews:Landroid/widget/RemoteViews;

    :cond_6
    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->bigRemoteViews:Landroid/widget/RemoteViews;

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->smallRemoteViews:Landroid/widget/RemoteViews;

    iput-object v5, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->bigRemoteViews:Landroid/widget/RemoteViews;

    :cond_7
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V
    .locals 1

    iget-object v0, p1, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isShow:Z

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isShow:Z

    iget-object v0, p1, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->smallRemoteViews:Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->smallRemoteViews:Landroid/widget/RemoteViews;

    iget-object v0, p1, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->expandRemoteViews:Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->expandRemoteViews:Landroid/widget/RemoteViews;

    iget-object v0, p1, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->bigRemoteViews:Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->bigRemoteViews:Landroid/widget/RemoteViews;

    iget-boolean v0, p1, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isValidData:Z

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isValidData:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ServiceBoxRemoteViewsItem["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->smallRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->expandRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->bigRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
