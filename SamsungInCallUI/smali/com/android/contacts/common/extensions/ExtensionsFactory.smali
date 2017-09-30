.class public Lcom/android/contacts/common/extensions/ExtensionsFactory;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/util/Properties;

.field private static c:Lcom/android/contacts/common/extensions/ExtendedPhoneDirectoriesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "ExtensionsFactory"

    sput-object v0, Lcom/android/contacts/common/extensions/ExtensionsFactory;->a:Ljava/lang/String;

    sput-object v1, Lcom/android/contacts/common/extensions/ExtensionsFactory;->b:Ljava/util/Properties;

    sput-object v1, Lcom/android/contacts/common/extensions/ExtensionsFactory;->c:Lcom/android/contacts/common/extensions/ExtendedPhoneDirectoriesManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/android/contacts/common/extensions/ExtendedPhoneDirectoriesManager;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/extensions/ExtensionsFactory;->c:Lcom/android/contacts/common/extensions/ExtendedPhoneDirectoriesManager;

    return-object v0
.end method
