.class public final Landroid/service/pm/PackageProto$UserInfoProto;
.super Ljava/lang/Object;
.source "PackageProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/pm/PackageProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UserInfoProto"
.end annotation


# static fields
.field public static final COMPONENT_ENABLED_STATE_DEFAULT:I = 0x0

.field public static final COMPONENT_ENABLED_STATE_DISABLED:I = 0x2

.field public static final COMPONENT_ENABLED_STATE_DISABLED_UNTIL_USED:I = 0x4

.field public static final COMPONENT_ENABLED_STATE_DISABLED_USER:I = 0x3

.field public static final COMPONENT_ENABLED_STATE_ENABLED:I = 0x1

.field public static final ENABLED_STATE:J = 0x11000000007L

.field public static final FULL_APP_INSTALL:I = 0x1

.field public static final ID:J = 0x10300000001L

.field public static final INSTALL_TYPE:J = 0x11000000002L

.field public static final INSTANT_APP_INSTALL:I = 0x2

.field public static final IS_HIDDEN:J = 0x10d00000003L

.field public static final IS_LAUNCHED:J = 0x10d00000006L

.field public static final IS_STOPPED:J = 0x10d00000005L

.field public static final IS_SUSPENDED:J = 0x10d00000004L

.field public static final LAST_DISABLED_APP_CALLER:J = 0x10e00000008L

.field public static final NOT_INSTALLED_FOR_USER:I


# instance fields
.field final synthetic this$0:Landroid/service/pm/PackageProto;


# direct methods
.method public constructor <init>(Landroid/service/pm/PackageProto;)V
    .locals 0

    iput-object p1, p0, Landroid/service/pm/PackageProto$UserInfoProto;->this$0:Landroid/service/pm/PackageProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
