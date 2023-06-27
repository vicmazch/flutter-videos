
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sec_six_app/config/theme/app_theme.dart';
import 'package:sec_six_app/infrastructure/datasources/local_video_datasource_impl.dart';
import 'package:sec_six_app/infrastructure/repositories/video_posts_repository_impl.dart';
import 'package:sec_six_app/presentation/providers/discover_provider.dart';
import 'package:sec_six_app/presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    final videoPostsRepositoryImp = VideoPostsRepositoryImp(
      videoPostDatasource: LocalVideoDatasourceImp()
    );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (context) => DiscoverProvider( videoPostsRepository: videoPostsRepositoryImp)..loadNextPage()
        )
      ],
      child: MaterialApp(
        theme: AppTheme().getTheme(),
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: const DiscoverScreen(),
      ),
    );
  }
}