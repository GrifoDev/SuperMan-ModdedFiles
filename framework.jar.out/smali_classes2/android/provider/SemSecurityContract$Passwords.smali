.class public final Landroid/provider/SemSecurityContract$Passwords;
.super Ljava/lang/Object;
.source "SemSecurityContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SemSecurityContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Passwords"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/SemSecurityContract$Passwords$Columns;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final TABLE_NAME:Ljava/lang/String; = "passwords"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/provider/SemSecurityContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "password"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/SemSecurityContract$Passwords;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
