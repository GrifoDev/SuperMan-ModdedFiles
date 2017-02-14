.class public interface abstract Lmf/org/w3c/dom/ls/LSParser;
.super Ljava/lang/Object;
.source "LSParser.java"


# static fields
.field public static final ACTION_APPEND_AS_CHILDREN:S = 0x1s

.field public static final ACTION_INSERT_AFTER:S = 0x4s

.field public static final ACTION_INSERT_BEFORE:S = 0x3s

.field public static final ACTION_REPLACE:S = 0x5s

.field public static final ACTION_REPLACE_CHILDREN:S = 0x2s


# virtual methods
.method public abstract abort()V
.end method

.method public abstract getAsync()Z
.end method

.method public abstract getBusy()Z
.end method

.method public abstract getDomConfig()Lmf/org/w3c/dom/DOMConfiguration;
.end method

.method public abstract getFilter()Lmf/org/w3c/dom/ls/LSParserFilter;
.end method

.method public abstract parse(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;,
            Lmf/org/w3c/dom/ls/LSException;
        }
    .end annotation
.end method

.method public abstract parseURI(Ljava/lang/String;)Lmf/org/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;,
            Lmf/org/w3c/dom/ls/LSException;
        }
    .end annotation
.end method

.method public abstract parseWithContext(Lmf/org/w3c/dom/ls/LSInput;Lmf/org/w3c/dom/Node;S)Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;,
            Lmf/org/w3c/dom/ls/LSException;
        }
    .end annotation
.end method

.method public abstract setFilter(Lmf/org/w3c/dom/ls/LSParserFilter;)V
.end method
