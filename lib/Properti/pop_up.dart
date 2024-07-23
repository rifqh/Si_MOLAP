import 'package:flutter/material.dart';
import 'package:si_molap/Dosen/complete_task.dart';
import 'package:si_molap/Mahasiswa/join_page.dart';
import '../Dosen/create_class_page.dart';

class HomePagePop extends StatelessWidget {
  const HomePagePop({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      color: Color(0xffffffff),
      itemBuilder: (context) {
        return [
          const PopupMenuItem<int>(
            value: 0,
            child: Text("Gabung Kelas"),
          ),
          const PopupMenuItem<int>(
            value: 1,
            child: Text("Buat Kelas"),
          ),
        ];
      },
      onSelected: (value) {
        if (value == 0) {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return JoinPage();
          }));
        } else if (value == 1) {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return CreateClassPage();
          }));
        }
      },
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          "Create Class",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}

class SeeTaskPop extends StatelessWidget {
  const SeeTaskPop({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      color: Color(0xffffffff),
      itemBuilder: (context) {
        return [
          const PopupMenuItem<int>(
            value: 0,
            child: Text("Edit"),
          ),
          const PopupMenuItem<int>(
            value: 1,
            child: Text("Laporan Mahasiswa"),
          ),
          const PopupMenuItem<int>(
            value: 2,
            child: Text(
              "Hapus",
              style: TextStyle(color: Colors.red),
            ),
          ),
        ];
      },
      onSelected: (value) {
        if (value == 0) {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return JoinPage();
          }));
        } else if (value == 1) {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return CompleteTask();
          }));
        } else if (value == 2) {}
      },
      child: Padding(
        
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        child: Icon(Icons.more_horiz_rounded),
      ),
    );
  }
}
