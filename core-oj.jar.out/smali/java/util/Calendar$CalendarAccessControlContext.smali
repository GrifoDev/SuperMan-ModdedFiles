.class Ljava/util/Calendar$CalendarAccessControlContext;
.super Ljava/lang/Object;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CalendarAccessControlContext"
.end annotation


# static fields
.field private static final INSTANCE:Ljava/security/AccessControlContext;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/lang/RuntimePermission;

    const-string/jumbo v2, "accessClassInPackage.sun.util.calendar"

    invoke-direct {v0, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/Permission;->newPermissionCollection()Ljava/security/PermissionCollection;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/PermissionCollection;->add(Ljava/security/Permission;)V

    new-instance v2, Ljava/security/AccessControlContext;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/security/ProtectionDomain;

    new-instance v4, Ljava/security/ProtectionDomain;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Ljava/security/ProtectionDomain;-><init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {v2, v3}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    sput-object v2, Ljava/util/Calendar$CalendarAccessControlContext;->INSTANCE:Ljava/security/AccessControlContext;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
