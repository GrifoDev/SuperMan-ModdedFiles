.class public Lcom/android/contacts/common/activity/RequestImportVCardPermissionsActivity;
.super Lcom/android/contacts/common/activity/RequestPermissionsActivity;


# static fields
.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_CONTACTS"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/common/activity/RequestImportVCardPermissionsActivity;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 2

    sget-object v0, Lcom/android/contacts/common/activity/RequestImportVCardPermissionsActivity;->b:[Ljava/lang/String;

    const-class v1, Lcom/android/contacts/common/activity/RequestImportVCardPermissionsActivity;

    invoke-static {p0, v0, v1}, Lcom/android/contacts/common/activity/RequestImportVCardPermissionsActivity;->a(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/activity/RequestImportVCardPermissionsActivity;->b:[Ljava/lang/String;

    return-object v0
.end method

.method protected b()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/activity/RequestImportVCardPermissionsActivity;->b:[Ljava/lang/String;

    return-object v0
.end method
