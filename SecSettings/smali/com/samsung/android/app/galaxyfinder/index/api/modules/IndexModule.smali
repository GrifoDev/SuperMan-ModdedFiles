.class public Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;
.super Ljava/lang/Object;
.source "IndexModule.java"


# instance fields
.field private final indexModuleIndexable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleIndexable;

.field private final indexModuleSearchable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;

.field private final mAuthority:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleIndexable;Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->mAuthority:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->indexModuleIndexable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleIndexable;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->indexModuleSearchable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "IndexModule"

    invoke-static {v3, v2}, Lcom/samsung/android/app/galaxyfinder/index/util/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p3, :cond_3

    :goto_0
    move-object v0, p1

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v1, :pswitch_data_0

    :cond_1
    return-object v4

    :cond_2
    return-object v4

    :cond_3
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "getInfo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "notifyReadyToIndex"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getApiVersion()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "api_version"

    invoke-virtual {p3, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getModuleLabel()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "label"

    invoke-virtual {p3, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getModuleIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    const-string/jumbo v3, "icon"

    invoke-virtual {p3, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->indexModuleSearchable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;

    if-nez v2, :cond_4

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->isIndexable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "isIndexable"

    invoke-virtual {p3, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->isSearchable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "isSearchable"

    invoke-virtual {p3, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p3

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->indexModuleSearchable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;->makeAppLaunchIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "launchIntent"

    invoke-virtual {p3, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->indexModuleSearchable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;->getLegacySearchActivity()Landroid/content/ComponentName;

    move-result-object v2

    const-string/jumbo v3, "legacySearchActivity"

    invoke-virtual {p3, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->indexModuleSearchable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;->makeInAppSearchIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "inAppSearchActivity"

    invoke-virtual {p3, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_2

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->indexModuleIndexable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleIndexable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->indexModuleIndexable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleIndexable;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleIndexable;->onReceiveIndexRequested(Z)V

    return-object p3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x47f32dc -> :sswitch_0
        0x220675dd -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    return v0
.end method

.method public final getApiVersion()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "0.1.13"

    return-object v0
.end method

.method public final getModule()Landroid/content/pm/ProviderInfo;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->mAuthority:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getModuleIcon()Landroid/graphics/drawable/Icon;
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getModule()Landroid/content/pm/ProviderInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ProviderInfo;->icon:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->indexModuleSearchable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getModule()Landroid/content/pm/ProviderInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ProviderInfo;->getIconResource()I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    return-object v2

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getModule()Landroid/content/pm/ProviderInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ProviderInfo;->icon:I

    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    return-object v2

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->indexModuleSearchable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;->makeAppLaunchIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->indexModuleSearchable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;->makeAppLaunchIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "IndexModule"

    const-string/jumbo v3, "Fail to get Icon from AppLaunchIntent"

    invoke-static {v2, v3, v0}, Lcom/samsung/android/app/galaxyfinder/index/util/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final getModuleLabel()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getModule()Landroid/content/pm/ProviderInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ProviderInfo;->labelRes:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->indexModuleSearchable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getModule()Landroid/content/pm/ProviderInfo;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getModule()Landroid/content/pm/ProviderInfo;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->indexModuleSearchable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;->makeAppLaunchIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->indexModuleSearchable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;->makeAppLaunchIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "IndexModule"

    const-string/jumbo v3, "Fail to get Label from AppLaunchIntent"

    invoke-static {v2, v3, v0}, Lcom/samsung/android/app/galaxyfinder/index/util/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isIndexable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->indexModuleIndexable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleIndexable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isSearchable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->indexModuleSearchable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string/jumbo v10, "query"

    invoke-virtual {p1, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "requestId"

    invoke-virtual {p1, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "limit"

    invoke-virtual {p1, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "query: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", searchId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", limit: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "IndexModule"

    invoke-static {v11, v10}, Lcom/samsung/android/app/galaxyfinder/index/util/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->isSearchable()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_0
    const/4 v10, 0x0

    return-object v10

    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Not searchable component: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->mAuthority:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "IndexModule"

    invoke-static {v11, v10}, Lcom/samsung/android/app/galaxyfinder/index/util/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    return-object v10

    :cond_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    new-instance v8, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchRequest;

    invoke-direct {v8, v7, v6}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_0
    iget-object v10, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->indexModuleSearchable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;

    invoke-interface {v10, v6, v4}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;->getSearchResult(Ljava/lang/String;I)Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;

    move-result-object v9

    if-eqz v9, :cond_3

    :goto_1
    new-instance v5, Landroid/database/MatrixCursor;

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "request"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "api_version"

    const/4 v12, 0x1

    aput-object v11, v10, v12

    const-string/jumbo v11, "count"

    const/4 v12, 0x2

    aput-object v11, v10, v12

    const-string/jumbo v11, "result"

    const/4 v12, 0x3

    aput-object v11, v10, v12

    invoke-direct {v5, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v9}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;->getTotalCount()I

    move-result v0

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v8}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchRequest;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const/4 v11, 0x1

    const-string/jumbo v12, "0.1.13"

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v9}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v10, v12

    invoke-virtual {v5, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return-object v5

    :catch_0
    move-exception v2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "fail to get limit: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "IndexModule"

    invoke-static {v11, v10}, Lcom/samsung/android/app/galaxyfinder/index/util/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v10, "IndexModule"

    const-string/jumbo v11, "SearchResult is fail"

    invoke-static {v10, v11}, Lcom/samsung/android/app/galaxyfinder/index/util/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;

    const/4 v10, -0x1

    invoke-direct {v9, v10}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;-><init>(I)V

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v10, "IndexModule"

    const-string/jumbo v11, "Fail to get cursor"

    invoke-static {v10, v11, v1}, Lcom/samsung/android/app/galaxyfinder/index/util/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    return v0
.end method
