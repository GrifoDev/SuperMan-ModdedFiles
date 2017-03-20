.class public Lcom/android/contacts/common/vcard/ExportRequest;
.super Ljava/lang/Object;
.source "ExportRequest.java"


# instance fields
.field public final destUri:Landroid/net/Uri;

.field public final exportType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1, "destUri"    # Landroid/net/Uri;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/vcard/ExportRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p1, "destUri"    # Landroid/net/Uri;
    .param p2, "exportType"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    .line 34
    iput-object p2, p0, Lcom/android/contacts/common/vcard/ExportRequest;->exportType:Ljava/lang/String;

    .line 35
    return-void
.end method
