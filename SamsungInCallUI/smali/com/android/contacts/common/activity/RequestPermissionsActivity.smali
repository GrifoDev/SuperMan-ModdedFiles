.class public Lcom/android/contacts/common/activity/RequestPermissionsActivity;
.super Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;


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

    const-string v2, "android.permission.READ_CALL_LOG"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/common/activity/RequestPermissionsActivity;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;-><init>()V

    return-void
.end method

.method public static b(Landroid/app/Activity;)Z
    .locals 2

    sget-object v0, Lcom/android/contacts/common/activity/RequestPermissionsActivity;->b:[Ljava/lang/String;

    const-class v1, Lcom/android/contacts/common/activity/RequestPermissionsActivity;

    invoke-static {p0, v0, v1}, Lcom/android/contacts/common/activity/RequestPermissionsActivity;->a(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/activity/RequestPermissionsActivity;->b:[Ljava/lang/String;

    return-object v0
.end method

.method protected b()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.READ_CONTACTS"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.READ_CALL_LOG"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.permission.READ_CALENDAR"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.permission.READ_SMS"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/common/activity/RequestPermissionsActivity;->a([Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivity;->a:Landroid/content/Intent;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivity;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/activity/RequestPermissionsActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivity;->finish()V

    invoke-virtual {p0, v2, v2}, Lcom/android/contacts/common/activity/RequestPermissionsActivity;->overridePendingTransition(II)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0905f4

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivity;->finish()V

    goto :goto_0
.end method
