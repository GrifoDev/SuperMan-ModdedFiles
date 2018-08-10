.class public final Lcom/sec/ims/scab/CABContract;
.super Ljava/lang/Object;
.source "CABContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/scab/CABContract$CABBusinessContact;,
        Lcom/sec/ims/scab/CABContract$CABBusinessContactAddress;,
        Lcom/sec/ims/scab/CABContract$CABBusinessContactEmail;,
        Lcom/sec/ims/scab/CABContract$CABBusinessContactOrgan;,
        Lcom/sec/ims/scab/CABContract$CABBusinessContactPhone;,
        Lcom/sec/ims/scab/CABContract$CABBusinessContactRequest;,
        Lcom/sec/ims/scab/CABContract$CABConfig;,
        Lcom/sec/ims/scab/CABContract$CABConsumerContact;,
        Lcom/sec/ims/scab/CABContract$CABConsumerContactRequest;
    }
.end annotation


# static fields
.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final CAB_ADD_PENDING_CONSUMER_CONTACTS:I = 0x16

.field public static final CAB_BUSINESS_CONTACTS:I = 0xa

.field public static final CAB_BUSINESS_CONTACTS_REQUESTS:I = 0xb

.field public static final CAB_BUSINESS_CONTACT_ADDRESSES:I = 0x78

.field public static final CAB_BUSINESS_CONTACT_ADDRESSES_BY_CONTACT:I = 0x7a

.field public static final CAB_BUSINESS_CONTACT_ADDRESSES_BY_NOTIFY:I = 0x79

.field public static final CAB_BUSINESS_CONTACT_EMAILS:I = 0x64

.field public static final CAB_BUSINESS_CONTACT_EMAILS_BY_CONTACT:I = 0x66

.field public static final CAB_BUSINESS_CONTACT_EMAILS_BY_NOTIFY:I = 0x65

.field public static final CAB_BUSINESS_CONTACT_ORGANS:I = 0x82

.field public static final CAB_BUSINESS_CONTACT_ORGANS_BY_CONTACT:I = 0x84

.field public static final CAB_BUSINESS_CONTACT_ORGANS_BY_NOTIFY:I = 0x83

.field public static final CAB_BUSINESS_CONTACT_PHONES:I = 0x6e

.field public static final CAB_BUSINESS_CONTACT_PHONES_BY_CONTACT:I = 0x70

.field public static final CAB_BUSINESS_CONTACT_PHONES_BY_NOTIFY:I = 0x6f

.field public static final CAB_BUSINESS_PENDING_REQUESTS:I = 0xc

.field public static final CAB_CONSUMER_CONTACTS:I = 0x14

.field public static final CAB_CONSUMER_CONTACTS_REQUESTS:I = 0x15

.field public static final CAB_DELETE_PENDING_CONSUMER_CONTACTS:I = 0x17

.field public static final CAB_STATUS:I = 0x0

.field public static final CAB_UPDATE_PENDING_CONSUMER_CONTACTS:I = 0x18

.field public static final COMPLETED:I = 0x3

.field public static final DISABLED:I = 0x0

.field public static final DISABLE_CAB:I = 0x2

.field public static final ENABLED:I = 0x1

.field public static final ENABLE_CAB:I = 0x1

.field public static final PACKAGE_CONTEXT:Ljava/lang/String; = "com.sec.imsservice"

.field public static final PROVIDER_NAME:Ljava/lang/String; = "com.samsung.jansky.cab.provider"

.field public static final SERVICE_CLASS_NAME:Ljava/lang/String; = "com.sec.internal.ims.imsservice.CABService"

.field public static final SYNCED:I = 0x2

.field public static final SYNCING:I = 0x1

.field public static final UNCOMPLETED:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "content://com.samsung.jansky.cab.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/scab/CABContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
