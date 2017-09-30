.class Lcom/android/contacts/common/list/AccountFilterActivity$FilterLoader;
.super Landroid/content/AsyncTaskLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/AccountFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilterLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/contacts/common/list/ContactListFilter;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterLoader;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/list/ContactListFilter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterLoader;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/list/AccountFilterActivity;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/AccountFilterActivity$FilterLoader;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/AccountFilterActivity$FilterLoader;->onStopLoading()V

    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/AccountFilterActivity$FilterLoader;->forceLoad()V

    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/AccountFilterActivity$FilterLoader;->cancelLoad()Z

    return-void
.end method
