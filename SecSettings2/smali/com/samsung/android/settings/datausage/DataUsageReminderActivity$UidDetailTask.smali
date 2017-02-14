.class Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;
.super Landroid/os/AsyncTask;
.source "DataUsageReminderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;
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
.field private final mItem:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;

.field private final mProvider:Lcom/android/settingslib/net/UidDetailProvider;

.field private final mTarget:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/net/UidDetailProvider;Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/net/UidDetailProvider;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;->mProvider:Lcom/android/settingslib/net/UidDetailProvider;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;->mItem:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;->mTarget:Landroid/view/View;

    return-void
.end method

.method private static bindView(Lcom/android/settingslib/net/UidDetail;Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const v2, 0x7f11027c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f11027d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    iget-object v2, p0, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settingslib/net/UidDetail;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static bindView(Lcom/android/settingslib/net/UidDetailProvider;Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;->cancel(Z)Z

    :cond_0
    iget v2, p1, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->key:I

    invoke-virtual {p0, v2, v4}, Lcom/android/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, p2}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;->bindView(Lcom/android/settingslib/net/UidDetail;Landroid/view/View;)V

    :goto_0
    return-void

    :cond_1
    new-instance v2, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;-><init>(Lcom/android/settingslib/net/UidDetailProvider;Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;Landroid/view/View;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/settingslib/net/UidDetail;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;->mProvider:Lcom/android/settingslib/net/UidDetailProvider;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;->mItem:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;

    iget v1, v1, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->key:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;->doInBackground([Ljava/lang/Void;)Lcom/android/settingslib/net/UidDetail;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/settingslib/net/UidDetail;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;->mTarget:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;->bindView(Lcom/android/settingslib/net/UidDetail;Landroid/view/View;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/settingslib/net/UidDetail;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;->onPostExecute(Lcom/android/settingslib/net/UidDetail;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;->mTarget:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;->bindView(Lcom/android/settingslib/net/UidDetail;Landroid/view/View;)V

    return-void
.end method
