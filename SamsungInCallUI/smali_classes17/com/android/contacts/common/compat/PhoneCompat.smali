.class public Lcom/android/contacts/common/compat/PhoneCompat;
.super Ljava/lang/Object;
.source "PhoneCompat.java"


# static fields
.field private static final ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "filter_enterprise"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/compat/PhoneCompat;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentFilterUri()Landroid/net/Uri;
    .locals 1

    sget-boolean v0, Lcom/android/contacts/common/ContactsUtils;->FLAG_N_FEATURE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/contacts/common/compat/PhoneCompat;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    goto :goto_0
.end method
