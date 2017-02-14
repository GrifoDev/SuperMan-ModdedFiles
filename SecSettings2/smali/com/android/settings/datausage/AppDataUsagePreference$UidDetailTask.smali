.class Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;
.super Landroid/os/AsyncTask;
.source "AppDataUsagePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/AppDataUsagePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UidDetailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/settingslib/net/UidDetail;",
        ">;"
    }
.end annotation


# instance fields
.field private final mItem:Lcom/android/settingslib/AppItem;

.field private final mProvider:Lcom/android/settingslib/net/UidDetailProvider;

.field private final mTarget:Lcom/android/settings/datausage/AppDataUsagePreference;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/net/UidDetailProvider;Lcom/android/settingslib/AppItem;Lcom/android/settings/datausage/AppDataUsagePreference;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/net/UidDetailProvider;

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->mProvider:Lcom/android/settingslib/net/UidDetailProvider;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/AppItem;

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->mItem:Lcom/android/settingslib/AppItem;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/AppDataUsagePreference;

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->mTarget:Lcom/android/settings/datausage/AppDataUsagePreference;

    return-void
.end method

.method private static bindView(Lcom/android/settingslib/net/UidDetail;Landroid/preference/Preference;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static bindView(Lcom/android/settingslib/net/UidDetailProvider;Lcom/android/settingslib/AppItem;Lcom/android/settings/datausage/AppDataUsagePreference;)V
    .locals 6

    const/4 v5, 0x0

    iget v2, p1, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {p0, v2, v5}, Lcom/android/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->bindView(Lcom/android/settingslib/net/UidDetail;Landroid/preference/Preference;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string/jumbo v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "target.mExecutor  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/settings/datausage/AppDataUsagePreference;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;-><init>(Lcom/android/settingslib/net/UidDetailProvider;Lcom/android/settingslib/AppItem;Lcom/android/settings/datausage/AppDataUsagePreference;)V

    sget-object v3, Lcom/android/settings/datausage/AppDataUsagePreference;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sput-boolean v5, Lcom/android/settings/datausage/AppDataUsagePreference;->sIsDataLoaded:Z

    const-string/jumbo v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RejectedExecutionException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/settingslib/net/UidDetail;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->mProvider:Lcom/android/settingslib/net/UidDetailProvider;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->mItem:Lcom/android/settingslib/AppItem;

    iget v1, v1, Lcom/android/settingslib/AppItem;->key:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->doInBackground([Ljava/lang/Void;)Lcom/android/settingslib/net/UidDetail;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/settingslib/net/UidDetail;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->mTarget:Lcom/android/settings/datausage/AppDataUsagePreference;

    invoke-static {p1, v0}, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->bindView(Lcom/android/settingslib/net/UidDetail;Landroid/preference/Preference;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/settingslib/net/UidDetail;

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->onPostExecute(Lcom/android/settingslib/net/UidDetail;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->mTarget:Lcom/android/settings/datausage/AppDataUsagePreference;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->bindView(Lcom/android/settingslib/net/UidDetail;Landroid/preference/Preference;)V

    return-void
.end method
