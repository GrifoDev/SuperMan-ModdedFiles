.class public interface abstract Lorg/apache/http/cookie/ClientCookie;
.super Ljava/lang/Object;
.source "ClientCookie.java"

# interfaces
.implements Lorg/apache/http/cookie/Cookie;


# static fields
.field public static final COMMENTURL_ATTR:Ljava/lang/String; = "commenturl"
    .annotation build Lorg/apache/http/annotation/Obsolete;
    .end annotation
.end field

.field public static final COMMENT_ATTR:Ljava/lang/String; = "comment"
    .annotation build Lorg/apache/http/annotation/Obsolete;
    .end annotation
.end field

.field public static final DISCARD_ATTR:Ljava/lang/String; = "discard"
    .annotation build Lorg/apache/http/annotation/Obsolete;
    .end annotation
.end field

.field public static final DOMAIN_ATTR:Ljava/lang/String; = "domain"

.field public static final EXPIRES_ATTR:Ljava/lang/String; = "expires"

.field public static final MAX_AGE_ATTR:Ljava/lang/String; = "max-age"

.field public static final PATH_ATTR:Ljava/lang/String; = "path"

.field public static final PORT_ATTR:Ljava/lang/String; = "port"
    .annotation build Lorg/apache/http/annotation/Obsolete;
    .end annotation
.end field

.field public static final SECURE_ATTR:Ljava/lang/String; = "secure"

.field public static final VERSION_ATTR:Ljava/lang/String; = "version"
    .annotation build Lorg/apache/http/annotation/Obsolete;
    .end annotation
.end field


# virtual methods
.method public abstract containsAttribute(Ljava/lang/String;)Z
.end method

.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/String;
.end method
