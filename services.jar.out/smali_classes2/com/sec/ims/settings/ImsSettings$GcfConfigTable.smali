.class public final Lcom/sec/ims/settings/ImsSettings$GcfConfigTable;
.super Ljava/lang/Object;
.source "ImsSettings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/settings/ImsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GcfConfigTable"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final GCF_CONFIG_ENABLE:Ljava/lang/String; = "GCF_CONFIG_ENABLE"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "content://com.sec.ims.settings/gcfconfig"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/settings/ImsSettings$GcfConfigTable;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
