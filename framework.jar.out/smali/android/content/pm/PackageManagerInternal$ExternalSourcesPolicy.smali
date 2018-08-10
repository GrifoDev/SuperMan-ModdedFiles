.class public interface abstract Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;
.super Ljava/lang/Object;
.source "PackageManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExternalSourcesPolicy"
.end annotation


# static fields
.field public static final USER_BLOCKED:I = 0x1

.field public static final USER_DEFAULT:I = 0x2

.field public static final USER_TRUSTED:I


# virtual methods
.method public abstract getPackageTrustedToInstallApps(Ljava/lang/String;I)I
.end method
