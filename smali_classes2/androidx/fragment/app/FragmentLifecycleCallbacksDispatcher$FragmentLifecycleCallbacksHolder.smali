.class final Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
.super Ljava/lang/Object;
.source "FragmentLifecycleCallbacksDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FragmentLifecycleCallbacksHolder"
.end annotation


# instance fields
.field final mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final mRecursive:Z


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
    .locals 0
    .param p1    # Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    .line 3
    iput-boolean p2, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    return-void
.end method
