.class public final Lcom/android/launcher2/tabs/TabManager$TabInfo;
.super Ljava/lang/Object;
.source "TabManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/tabs/TabManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TabInfo"
.end annotation


# instance fields
.field private final args:Landroid/os/Bundle;

.field private clss:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private fragment:Landroid/app/Fragment;

.field public final tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/tabs/TabManager$TabInfo;->tag:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher2/tabs/TabManager$TabInfo;->clss:Ljava/lang/Class;

    iput-object p3, p0, Lcom/android/launcher2/tabs/TabManager$TabInfo;->args:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/launcher2/tabs/TabManager$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/tabs/TabManager$TabInfo;->clss:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/tabs/TabManager$TabInfo;->args:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method public getFrag()Landroid/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;

    return-object v0
.end method
