.class public Lcom/android/contacts/common/vcard/ExportRequest;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/vcard/ExportRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ExportRequest;->a:Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/contacts/common/vcard/ExportRequest;->b:Ljava/lang/String;

    return-void
.end method
