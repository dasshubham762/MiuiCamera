.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$CloneAction;
.super Ljava/lang/Object;
.source "ModeProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/protocol/ModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CloneAction"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0x1a3


# virtual methods
.method public abstract onCancelClicked()V
.end method

.method public abstract onExitClicked()V
.end method

.method public abstract onGiveUpClicked()V
.end method

.method public abstract onSaveClicked()V
.end method

.method public abstract onStopClicked()V
.end method
