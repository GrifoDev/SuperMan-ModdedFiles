.class Landroid/support/v17/leanback/app/SearchFragment$5;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/SearchFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/SearchFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchFragment$5;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestAudioPermission()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment$5;->this$0:Landroid/support/v17/leanback/app/SearchFragment;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/support/v17/leanback/app/PermissionHelper;->requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V

    return-void
.end method
