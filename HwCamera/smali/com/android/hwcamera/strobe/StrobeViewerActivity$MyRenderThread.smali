.class Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;
.super Ljava/lang/Thread;
.source "StrobeViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/strobe/StrobeViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyRenderThread"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 878
    iput-object p1, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;->this$0:Lcom/android/hwcamera/strobe/StrobeViewerActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity;Lcom/android/hwcamera/strobe/StrobeViewerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 878
    invoke-direct {p0, p1}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;-><init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity;)V

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 887
    const-string v0, "Render Thread"

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;->setName(Ljava/lang/String;)V

    .line 889
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 891
    new-instance v0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyRenderThread$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyRenderThread$1;-><init>(Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;)V

    iput-object v0, p0, Lcom/android/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;->mHandler:Landroid/os/Handler;

    .line 904
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 905
    return-void
.end method
