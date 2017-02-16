.class Lcom/android/systemui/qs/tiles/DataSaverTile$1;
.super Ljava/lang/Object;
.source "DataSaverTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/DataSaverTile;->handleClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DataSaverTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DataSaverTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DataSaverTile$1;->this$0:Lcom/android/systemui/qs/tiles/DataSaverTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile$1;->this$0:Lcom/android/systemui/qs/tiles/DataSaverTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DataSaverTile;->-wrap0(Lcom/android/systemui/qs/tiles/DataSaverTile;)V

    return-void
.end method
