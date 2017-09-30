.class public Lcom/android/contacts/common/activity/RequestDesiredPermissionsActivity;
.super Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;


# static fields
.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.READ_CALENDAR"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.READ_SMS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/common/activity/RequestDesiredPermissionsActivity;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/activity/RequestDesiredPermissionsActivity;->b:[Ljava/lang/String;

    return-object v0
.end method

.method protected b()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/activity/RequestDesiredPermissionsActivity;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/contacts/common/activity/RequestDesiredPermissionsActivity;->a:Landroid/content/Intent;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/contacts/common/activity/RequestDesiredPermissionsActivity;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/activity/RequestDesiredPermissionsActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v2, v2}, Lcom/android/contacts/common/activity/RequestDesiredPermissionsActivity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Lcom/android/contacts/common/activity/RequestDesiredPermissionsActivity;->finish()V

    invoke-virtual {p0, v2, v2}, Lcom/android/contacts/common/activity/RequestDesiredPermissionsActivity;->overridePendingTransition(II)V

    return-void
.end method
