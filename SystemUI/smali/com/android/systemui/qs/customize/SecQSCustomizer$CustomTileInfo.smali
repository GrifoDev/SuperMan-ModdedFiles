.class public Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
.super Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
.source "SecQSCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/SecQSCustomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomTileInfo"
.end annotation


# instance fields
.field public customTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

.field public customizeTileContentDes:Ljava/lang/String;

.field public isNewCustomTile:Z

.field public longClickListener:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;-><init>()V

    return-void
.end method
