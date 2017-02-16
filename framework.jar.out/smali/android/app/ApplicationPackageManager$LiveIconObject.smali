.class public Landroid/app/ApplicationPackageManager$LiveIconObject;
.super Ljava/lang/Object;
.source "ApplicationPackageManager.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LiveIconObject"
.end annotation


# instance fields
.field private liveIcon:Ljava/lang/Object;

.field final synthetic this$0:Landroid/app/ApplicationPackageManager;


# direct methods
.method public constructor <init>(Landroid/app/ApplicationPackageManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ApplicationPackageManager;

    .prologue
    .line 3531
    iput-object p1, p0, Landroid/app/ApplicationPackageManager$LiveIconObject;->this$0:Landroid/app/ApplicationPackageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 3542
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationPackageManager$LiveIconObject;

    .line 3543
    .local v0, "temp":Landroid/app/ApplicationPackageManager$LiveIconObject;
    return-object v0
.end method

.method public getLiveIcon()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3535
    iget-object v0, p0, Landroid/app/ApplicationPackageManager$LiveIconObject;->liveIcon:Ljava/lang/Object;

    return-object v0
.end method

.method public setLiveIcon(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 3539
    iput-object p1, p0, Landroid/app/ApplicationPackageManager$LiveIconObject;->liveIcon:Ljava/lang/Object;

    .line 3538
    return-void
.end method
