.class Ljavax/security/auth/Subject$AuthPermissionHolder;
.super Ljava/lang/Object;
.source "Subject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/security/auth/Subject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AuthPermissionHolder"
.end annotation


# static fields
.field static final DO_AS_PERMISSION:Ljavax/security/auth/AuthPermission;

.field static final DO_AS_PRIVILEGED_PERMISSION:Ljavax/security/auth/AuthPermission;

.field static final GET_SUBJECT_PERMISSION:Ljavax/security/auth/AuthPermission;

.field static final MODIFY_PRINCIPALS_PERMISSION:Ljavax/security/auth/AuthPermission;

.field static final MODIFY_PRIVATE_CREDENTIALS_PERMISSION:Ljavax/security/auth/AuthPermission;

.field static final MODIFY_PUBLIC_CREDENTIALS_PERMISSION:Ljavax/security/auth/AuthPermission;

.field static final SET_READ_ONLY_PERMISSION:Ljavax/security/auth/AuthPermission;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1401
    new-instance v0, Ljavax/security/auth/AuthPermission;

    const-string/jumbo v1, "doAs"

    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    .line 1400
    sput-object v0, Ljavax/security/auth/Subject$AuthPermissionHolder;->DO_AS_PERMISSION:Ljavax/security/auth/AuthPermission;

    .line 1404
    new-instance v0, Ljavax/security/auth/AuthPermission;

    const-string/jumbo v1, "doAsPrivileged"

    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    .line 1403
    sput-object v0, Ljavax/security/auth/Subject$AuthPermissionHolder;->DO_AS_PRIVILEGED_PERMISSION:Ljavax/security/auth/AuthPermission;

    .line 1407
    new-instance v0, Ljavax/security/auth/AuthPermission;

    const-string/jumbo v1, "setReadOnly"

    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    .line 1406
    sput-object v0, Ljavax/security/auth/Subject$AuthPermissionHolder;->SET_READ_ONLY_PERMISSION:Ljavax/security/auth/AuthPermission;

    .line 1410
    new-instance v0, Ljavax/security/auth/AuthPermission;

    const-string/jumbo v1, "getSubject"

    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    .line 1409
    sput-object v0, Ljavax/security/auth/Subject$AuthPermissionHolder;->GET_SUBJECT_PERMISSION:Ljavax/security/auth/AuthPermission;

    .line 1413
    new-instance v0, Ljavax/security/auth/AuthPermission;

    const-string/jumbo v1, "modifyPrincipals"

    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    .line 1412
    sput-object v0, Ljavax/security/auth/Subject$AuthPermissionHolder;->MODIFY_PRINCIPALS_PERMISSION:Ljavax/security/auth/AuthPermission;

    .line 1416
    new-instance v0, Ljavax/security/auth/AuthPermission;

    const-string/jumbo v1, "modifyPublicCredentials"

    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    .line 1415
    sput-object v0, Ljavax/security/auth/Subject$AuthPermissionHolder;->MODIFY_PUBLIC_CREDENTIALS_PERMISSION:Ljavax/security/auth/AuthPermission;

    .line 1419
    new-instance v0, Ljavax/security/auth/AuthPermission;

    const-string/jumbo v1, "modifyPrivateCredentials"

    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    .line 1418
    sput-object v0, Ljavax/security/auth/Subject$AuthPermissionHolder;->MODIFY_PRIVATE_CREDENTIALS_PERMISSION:Ljavax/security/auth/AuthPermission;

    .line 1399
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
