.class Lcom/android/contacts/common/list/DirectoryListLoader$1;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/DirectoryListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/contacts/common/list/DirectoryListLoader;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/list/DirectoryListLoader;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/DirectoryListLoader$1;->a:Lcom/android/contacts/common/list/DirectoryListLoader;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/DirectoryListLoader$1;->a:Lcom/android/contacts/common/list/DirectoryListLoader;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryListLoader;->forceLoad()V

    return-void
.end method
