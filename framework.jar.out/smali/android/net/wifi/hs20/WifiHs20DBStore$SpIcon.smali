.class public Landroid/net/wifi/hs20/WifiHs20DBStore$SpIcon;
.super Ljava/lang/Object;
.source "WifiHs20DBStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hs20/WifiHs20DBStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpIcon"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final SP_HOTSPOT_ID:Ljava/lang/String; = "hotspot_id"

.field public static final SP_ICON_HASH:Ljava/lang/String; = "sp_icon_hash"

.field public static final SP_ICON_NAME:Ljava/lang/String; = "sp_icon_name"

.field public static final SP_ICON_TYPE:Ljava/lang/String; = "sp_icon_type"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/net/wifi/hs20/WifiHs20DBStore;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "sp_icon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/hs20/WifiHs20DBStore$SpIcon;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
