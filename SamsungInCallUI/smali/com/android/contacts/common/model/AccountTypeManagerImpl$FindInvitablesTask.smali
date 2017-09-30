.class Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/AccountTypeManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindInvitablesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Map",
        "<",
        "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
        "Lcom/android/contacts/common/model/account/AccountType;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/contacts/common/model/AccountTypeManagerImpl;


# direct methods
.method private constructor <init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;->a:Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl;Lcom/android/contacts/common/model/AccountTypeManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;-><init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;->a:Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;->a:Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    invoke-static {v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->a(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->a(Lcom/android/contacts/common/model/AccountTypeManagerImpl;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;->a:Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    invoke-static {v0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->c(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;->a(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;->a:Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    invoke-static {v0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->d(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;->a([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;->a(Ljava/util/Map;)V

    return-void
.end method
